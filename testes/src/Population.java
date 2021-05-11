import java.util.*;

public class Population {
    private int individualsLength;
    private int valuesArray[];
    private int weigthArray[];
    private int matrix[][];
    private LinkedList l = new LinkedList();
    private int threshold;
    private Integer fitness[];
    private int populationSize;
    private int elitism;
    private double crossover_rate;
    int returnedValues[] = new int[2];

    public Population(int populationSize, int individualsLength, int threshold, int elitism, double crossover_rate){
        generateRandomValuesNWeigth( individualsLength);
        this.individualsLength = individualsLength;
        this.populationSize = populationSize;
        this.matrix = new int[populationSize][individualsLength];
        this.fitness = new Integer[populationSize];
        this.threshold = threshold;
        this.elitism = elitism;
        this.crossover_rate = crossover_rate;
    }



    public int[][] calculateShits(int matrix[][]){

        //create random population
       // createPopulation();
        //Calculate s1 n s2
        calculateIndividualsFitness(matrix);
       return crossover(selection(matrix));
       //Falta mutacao
    }

    public void calculateIndividualsFitness(int matrix[][]) {
        System.out.println("Start calculating fittness");
        for (int i = 0; i<matrix.length; i++){
            returnedValues = getRowSumatory(matrix,i);
            if (returnedValues[1] <= threshold){
                fitness[i] = returnedValues[0];
            }else {
                fitness[i] =0;
            }
            System.out.println(returnedValues[0]+ " "+ returnedValues[1]);
        }
    }


    public int[][] createPopulation() {
        for (int i = 0; i<matrix.length; i++){
            for (int j = 0; j< individualsLength; j++){
                matrix[i][j] = getRandomNumber();
            }
        }
        return matrix;
    }

    public  int[] getRowSumatory(int[][] matrix, int i){
        int returnValue[] = new int[2];
        int valueSum = 0;
        int weigthSum = 0;
        for (int j = 0; j< individualsLength; j++){
            valueSum +=  matrix[i][j] *this.valuesArray[j];
            weigthSum += matrix[i][j] *this.weigthArray[j];
        }
        returnValue[0] = valueSum;
        returnValue[1] = weigthSum;
        return returnValue;
    }
    private int getRandomNumber(){
        if (Math.random()>0.5){
            return 1;
        }else{
            return 0;
        }
    }

    //do crossover in population
    public int[][] crossover(int matrix[][]){
        int rowCounter =0;

        //instantiate parents
        int[][] parents = getParents(matrix);
        int parent2Idx = new Random().nextInt(parents.length);
       // int[] offspring = generateOffspring(parents[0], parents[1]);

        System.out.println("Start Crossover");
        int crossover_point = individualsLength/2;

        for (int i = elitism; i< matrix.length; i++){
            if (crossover_rate >= Math.random()){
               matrix[i] = generateOffspring(parents[0], parents[parent2Idx]);
            }
        }

    return matrix;
    }

    //GenerateOffSpring

    public int[] generateOffspring(int[] parent1, int[] parent2){
        int[] offspring = new int[individualsLength];
        int crossover_point = individualsLength/2;
        for (int i= 0; i< crossover_point;i++){
            offspring[i] = parent1[i];
        }
        for (int j = crossover_point; j< individualsLength;j++){
           offspring[j] = parent2[j];
        }
        System.out.println("OffSpring: "+ Arrays.toString(offspring));
        return offspring;
    }
    //Selection
    public int[][] selection(int matrix[][]){
        // Convert array to list
        Integer highests[] = new Integer[elitism];
        Integer indexs[] = new Integer[elitism];

        //instantiate arrays with 0
        for (int i=0; i<elitism;i++){
            highests[i] = 0;
            indexs[i] = 0;
        }
        //pass array to linkedList
        List<Integer> list =  Arrays.asList(this.fitness);
        LinkedList<Integer> linkedList = new LinkedList<>(list);

        for (int i = 0; i< highests.length;i++ ){
            for (Integer value: linkedList) {
               if (highests[i] < value){
                   highests[i] = value;
                   indexs[i] = linkedList.indexOf(value);
               }
            }
            linkedList.remove(highests[i]);
        }
        System.out.println("Selection start");
        System.out.println(Arrays.toString(highests));
        System.out.println(Arrays.toString(indexs));
        System.out.println("Selection change matrix");
        //Define matrix of bests
        int bests[][] = new int[elitism][individualsLength];
        for (int i = 0; i< elitism; i++){
            for (int j = 0; j<individualsLength; j++){
                bests[i][j] = matrix[indexs[i]][j];
            }
        }
        System.out.println("Printing bests");

        // Loop through all rows
        for (int[] row : bests){
            // converting each row as string
            // and then printing in a separate line
            System.out.println(Arrays.toString(row));

        }
        System.out.println("End of bests");

        for (int i = 0; i< elitism; i++){
            for (int j = 0; j< individualsLength;j++){
                matrix[i][j] =  bests[i][j];
                if (indexs[i] >elitism){
                    matrix[indexs[i]][j] = -1;
                }

            }
        }
        return matrix;

       // return in
    }
    public  void print2D(int[][] matrix)
    {
        // Loop through all rows
        for (int[] row : matrix)
            // converting each row as string
            // and then printing in a separate line
            System.out.println(Arrays.toString(row));
    }

    //give the individualSize
    //Generate random values to heigths and values
    public void generateRandomValuesNWeigth(int size){
        int newValues[] = new int[size];
        int newHeigths[] = new int[size];
        for (int i = 0; i<newHeigths.length; i++){
            newHeigths[i] = new Random().nextInt(40);
            newValues[i] = new Random().nextInt(100);
        }

        this.valuesArray = newValues;
        this.weigthArray = newHeigths;
        System.out.println("Values or price");
        System.out.println(Arrays.toString(newValues));
        System.out.println("Heights");
        System.out.println(Arrays.toString(newHeigths));
    }

    public int[][] getParents(int[][] matrix){
        int[][] parents = new int[elitism][individualsLength];
        for (int i = 0; i< elitism; i++){
            for (int j = 0; j< individualsLength;j++){

                parents[i][j] = matrix[i][j];
            }
        }
        return parents;
    }
    public int[][] getMatrix() {
        return this.matrix;
    }

    public boolean solutionFound(int[] row){
        int total = 0;
        for (int i = 0; i< individualsLength; i++){
            total += row[i] *weigthArray[i];
        }
        System.out.println("max found: "+total + " Optimum solution: "+ threshold);
        if (total == threshold){
            return true;
        }
        return false;
    }
}
