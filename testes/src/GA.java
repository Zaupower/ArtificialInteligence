import java.util.Arrays;

public class GA {
    private final int generations;
    int population[][] = new int[6][5];
    int populationSize;
    int individualsLength;
    Population p;
    public GA(int populationSize, int individualsLength, int generations){
      this.generations = generations;
      this.populationSize = populationSize;
      this.individualsLength = individualsLength;
      population = new int[populationSize][individualsLength];
      this.p = new Population(populationSize, individualsLength, 20, 3, 0.9, 0.3);

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
