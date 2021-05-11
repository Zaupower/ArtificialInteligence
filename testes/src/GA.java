import java.util.Arrays;

public class GA {
    int population[][];
    Population p;
    public GA(){
      this.p = new Population(6, 5, 20, 3, 0.9);
      this.population = p.createPopulation();
    }

    public void loopthrow(){

        //calculate fitness
        //selection
        //mutation

        int genCount = 0;
        boolean solution = false;
        while (genCount < 1000 && !solution){
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
