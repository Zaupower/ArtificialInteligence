import java.util.*;

public class Population {
    private int individualsLength;
    private int valuesArray[];
    private int weigthArray[];
    private LinkedList l = new LinkedList();
    private int threshold;
    private Integer fitness[];
    private int populationSize;
    private int elitism;
    private double crossover_rate;
    int returnedValues[] = new int[2];
    private double mutation_rate;

    //TEST

    int lastEval = -1;
    int currentEval = -1;
    //TEST

    public Population(int populationSize, int individualsLength, int threshold, int elitism, double crossover_rate, double mutation_rate){
        generateRandomValuesNWeigth( individualsLength);
        this.individualsLength = individualsLength;
        this.populationSize = populationSize;
        this.fitness = new Integer[this.populationSize];
        this.threshold = threshold;
        this.elitism = elitism;
        this.crossover_rate = crossover_rate;
        this.mutation_rate = mutation_rate;
    }



    public int[][] routine(int matrix[][]){
        //create random population
        // createPopulation();
        //Calculate s1 n s2
        calculateIndividualsFitness(matrix);
        matrix = selection(matrix);
        matrix = crossover(matrix);
        matrix = mutate(matrix);
       return matrix;
    }


    public int[][] mutate(int[][] matrix){
        for (int i = 2; i< matrix.length; i++){
            if (mutation_rate >= Math.random()){
                matrix[i] = mutateIndividual( matrix[i]);
            }
        }

        return matrix;
    }

    public int[] mutateIndividual(int[] individual){
        int mutation_point = new Random().nextInt(individualsLength);
        if (individual[mutation_point] == 0){
            individual[mutation_point] = 1;
        }else {
            individual[mutation_point] = 0;
        }
        return individual;
    }
    public void calculateIndividualsFitness(int matrix[][]) {
        for (int i = 0; i<matrix.length; i++){
            returnedValues = getRowSumatory(matrix,i);
            if (returnedValues[1] <= threshold){
                fitness[i] = returnedValues[0];
            }else {
                fitness[i] =0;
            }
        }
    }

    public int[][] createPopulation(int[][] matrix) {
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
        //instantiate parents
        int[][] parents = getParents(matrix);
        int parent1Idx = new Random().nextInt(parents.length);
        int parent2Idx = new Random().nextInt(parents.length);
        for (int i = 1; i< matrix.length; i++){
            if (crossover_rate >= Math.random()){
               matrix[i] = generateOffspring(parents[parent1Idx], parents[parent2Idx]);
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
                if (value != null){
                    if (highests[i] < value){
                        highests[i] = value;
                        indexs[i] = linkedList.indexOf(value);
                    }
                }
            }
            linkedList.remove(highests[i]);
        }

        if (highests[0] > 0 ){
            //Define matrix of bests
            int bests[][] = new int[elitism][individualsLength];
            for (int i = 0; i< elitism; i++){
                for (int j = 0; j<individualsLength; j++){
                    bests[i][j] = matrix[indexs[i]][j];
                }
            }

            for (int i = 0; i< elitism; i++){
                for (int j = 0; j< individualsLength;j++){
                    matrix[i][j] =  bests[i][j];
                    if (indexs[i] >elitism){
                        matrix[indexs[i]][j] = 0;
                    }

                }
            }
        }

        return matrix;

       // return in
    }
    public  void print2D(int[][] matrix)
    {
        System.out.println("Values Array");
        System.out.println(Arrays.toString(valuesArray));
        System.out.println("Weigth Array");
        System.out.println(Arrays.toString(weigthArray));
        System.out.println("");
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
            newHeigths[i] = new Random().nextInt(10) + 1;
            newValues[i] = new Random().nextInt(100);
        }
        this.valuesArray = newValues;
        this.weigthArray = newHeigths;
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

    public boolean solutionFound(int[] row){
        int total = 0;
        for (int i = 0; i< individualsLength; i++){
            total += row[i] *weigthArray[i];
        }
        System.out.println("max found: "+total + " Optimum solution: "+ threshold);
        System.out.println("Mutation rate: "+this.mutation_rate);
        if (total == threshold){
            return true;
        }
        return false;
    }
    public void evaluate(int[][] matrix){
        int total = 0;
        int [] row;
        row = matrix[0];
        for (int i = 0; i< individualsLength; i++){
            total += row[i] *weigthArray[i];
        }
        int sub = total - threshold;
        if (sub< 0){
            sub = Math.abs(sub);
        }
        this.lastEval = this.currentEval;
        this.currentEval = sub;

        if (sub!= 0 ){
            if (this.lastEval > this.currentEval){
                this.mutation_rate -= 0.05;
                if (this.elitism>2){
                    this.elitism -= 1;
                }
            }else {
                this.mutation_rate += 0.05;
                if (elitism< individualsLength/2){
                    this.elitism += 1;
                }
            }
        }
    }

    public int[] getValuesArray() {
        return valuesArray;
    }

    public int[] getWeigthArray() {
        return weigthArray;
    }

    public int getElitism() {
        return elitism;
    }
}
