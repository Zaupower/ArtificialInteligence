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
    private int crossover_rate;

    int returnedValues[] = new int[2];
    public Population(int populationSize, int individualsLength, int threshold, int elitism, int crossover_rate){
        generateRandomValuesNWeigth( individualsLength);
        this.individualsLength = individualsLength;
        this.populationSize = populationSize;
        this.matrix = new int[populationSize][individualsLength];
        this.fitness = new Integer[populationSize];
        this.threshold = threshold;
        this.elitism = elitism;
        this.crossover_rate = crossover_rate;
    }



    public void calculateShits(int matrix[][]){

        //create random population
        createPopulation();
        //Calculate s1 n s2
        calculateIndividualsFitness(matrix);
    }

    public void calculateIndividualsFitness(int matrix[][]) {
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
    public void crossover(int matrix[][], int parents[][]){
        int crossover_point = individualsLength/2;
        

        for (int[] row : this.matrix){

        }
        for (int i= elitism+1; i<matrix.length;i++){
            if (this.crossover_rate > Math.random()){
                int[] row = matrix[i];
            }
        }

    }
    //Selection
    public void selection(int matrix[][]){
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
        System.out.println(Arrays.toString(highests));
        System.out.println(Arrays.toString(indexs));
       // return in
    }

    public  void print2D()
    {
        // Loop through all rows
        for (int[] row : this.matrix)
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
            newHeigths[i] = new Random().nextInt(30);
            newValues[i] = new Random().nextInt(100);
        }

        this.valuesArray = newValues;
        this.weigthArray = newHeigths;

       // System.out.println(Arrays.toString(newValues));
        // System.out.println(Arrays.toString(newHeigths));
    }
}
