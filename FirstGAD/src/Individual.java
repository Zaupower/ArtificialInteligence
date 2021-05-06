import java.util.Arrays;

import static java.lang.Math.random;

public class Individual {
    private char[] chromossome;
    private double fitness;

    public Individual(char[] chromossome){
        this.chromossome = chromossome;
        this.fitness = -1;
    }

    public Individual(int length){
        this.chromossome= new char[length];
        this.fitness = -1;
        this.generateChromossome();
    }

    private void generateChromossome() {
        for (int gene =0; gene< this.getChromossomeLength();gene++){
            this.chromossome[gene] = this.randomChar();
        }
    }

    public char randomChar() {
        int hexchar = (int) (random() * (122 - 63)) +63;
        if (hexchar == 63){hexchar = 32;};
        if (hexchar == 64){hexchar = 46;}

        return (char) hexchar;
    }


    public void setGene(int offset, char gene) {
        this.chromossome[offset] = gene;
    }

    public char getGene(int offset) {
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
