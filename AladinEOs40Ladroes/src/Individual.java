import java.util.Arrays;
import java.util.Random;

import static java.lang.Math.random;

public class Individual {
    private Knapsack[] chromossome;
    private double fitness;

    public Individual(Knapsack[] chromossome){
        this.chromossome = chromossome;
        this.fitness = -1;
    }

    public Individual(int length){
        this.chromossome= new Knapsack[length];
        this.fitness = -1;
        this.generateChromossome();
    }

    private void generateChromossome() {
        for (int gene =0; gene< this.getChromossomeLength();gene++){
            this.chromossome[gene].setValor(new Random().nextInt(100));
            this.chromossome[gene].setWeight(new Random().nextInt(7));
        }
    }

    public char randomChar() {
        int hexchar = (int) (random() * (122 - 63)) +63;
        if (hexchar == 63){hexchar = 32;};
        if (hexchar == 64){hexchar = 46;}

        return (char) hexchar;
    }


    public void setGene(int offset, Knapsack knapsack) {
        this.chromossome[offset] = knapsack;
    }

    public Knapsack getGene(int offset) {
        return this.chromossome[offset];
    }
    //get chromossome
    public  int getChromossomeLength(){return this.chromossome.length;}
    public double getFitness(){return  this.fitness;}
    public void setFitness(double fitness){this.fitness = fitness;}

    @Override
    public String toString() {
        return "Individual{" +
                "chromossome=" + Arrays.toString(chromossome) +
                ", fitness=" + fitness +
                '}';
    }
}
