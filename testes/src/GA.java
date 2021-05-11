import java.util.Arrays;

public class GA {
    private final int generations;
    private final int threshold;
    private final int elitism;
    private final double crossover_rate;
    private final double mutation_rate;
    int population[][] = new int[6][5];
    int populationSize;
    int individualsLength;
    Population p;
    public GA(int populationSize, int individualsLength, int generations, int threshold, int elitism, double crossover_rate, double mutation_rate){
      this.generations = generations;
      this.populationSize = populationSize;
      this.individualsLength = individualsLength;
      this.threshold = threshold;
      this. elitism = elitism;
      this.crossover_rate = crossover_rate;
      this.mutation_rate = mutation_rate;
      population = new int[populationSize][individualsLength];
      this.p = new Population(populationSize, individualsLength, threshold, elitism, crossover_rate, mutation_rate);

      this.population = p.createPopulation(population);
    }

    public void loopthrow(){

        //calculate fitness
        //selection
        //mutation

        int genCount = 0;
        boolean solution = false;
        while (genCount < generations && !solution){
            population = p.calculateShits(population);
            solution = p.solutionFound(population[0]);
            genCount++;
            System.out.println("Generation number: "+ genCount);
        }


        p.print2D(population);

    }

    public void printPopulation(){
        // Loop through all rows
        for (int[] row : this.population)
            // converting each row as string
            // and then printing in a separate line
            System.out.println(Arrays.toString(row));
    }
}
