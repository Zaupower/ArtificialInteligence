import com.sun.javaws.security.AppContextUtil;

import java.util.Arrays;

public class Population {
    private final Individual[] population;
    private double populationFitness;

    public Population(int populationSize){this.population
    = new Individual[populationSize];}

    public Population(int populationSize, int chromossomeLength){
        this.population = new Individual[populationSize];
        this.generatePopulation(chromossomeLength);
    }

    private void generatePopulation(int chromossomeLength){
        for (int individualCount =0; individualCount< getPopulationSize(); individualCount++){
            this.population[individualCount] = new Individual(chromossomeLength);
        }
    }
    public Individual[] getIndividuals(){
        return this.population;
    }

    public int getPopulationSize(){return this.population.length;}

    public Individual getFittest(int offset) {
        Arrays.sort(this.population, (i1, i2) ->{
            if (i1.getFitness() > i2.getFitness()){ return -1;}
            else if (i1.getFitness() < i2.getFitness()){
                return 1; }
                return 0;
            }
        );
        return this.population[offset];
    }

    public void setPopulationFitness(double fitness){this.populationFitness = fitness;}
    public double getPopulationFitness(){return this.populationFitness;}
    public void setIndividual(int offset, Individual individual){this.population[offset] = individual;}
    //add get Individual
    //add shuffle


    @Override
    public String toString() {
        return "Population{" +
                "population=" + Arrays.toString(population) +
                '}';
    }
}
