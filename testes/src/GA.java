import java.util.Arrays;

public class GA {
    int population[][];
    Population p;
    public GA(Population p){
      population = p.createPopulation();
    }

    public void loopthrow(){

        //calculate fitness
        //selection
        //mutation
    }

    public void printPopulation(){
        // Loop through all rows
        for (int[] row : this.population)
            // converting each row as string
            // and then printing in a separate line
            System.out.println(Arrays.toString(row));
    }
}
