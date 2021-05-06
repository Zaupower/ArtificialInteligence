public class GeneticAlgorithm {
    private final int populationSize;
    private final double mutationRate;
    private final double crossoverRate;
    private final int elitismCount;
    private Individual i;

    public GeneticAlgorithm(int populationSize, double mutationRate, double crossoverRate
            , int elitismCount){
        this.populationSize = populationSize;
        this.mutationRate = mutationRate;
        this.crossoverRate = crossoverRate;
        this.elitismCount = elitismCount;
    }

    public Population initPopulation(int chromossomeLength){
        return new Population(this.populationSize, chromossomeLength);
    }

    public double calculateFitness(Individual individual, String target){
        int correctGenes = 0;
        double fitness;
        for (int geneIndex = 0; geneIndex< individual.getChromossomeLength(); geneIndex++){
            if (individual.getGene(geneIndex) == target.charAt(geneIndex)){
                correctGenes++;
            }
        }

        fitness = (double) correctGenes / individual.getChromossomeLength();
        individual.setFitness(fitness);
        return fitness;
    }

    public void evalPopulation(Population population, String target){
        double populationFitness = 0;
        for (Individual individual : population.getIndividuals()){
            populationFitness += calculateFitness(individual, target);
        }
        population.setPopulationFitness(populationFitness);
    }
    public Individual selectParent(Population population){
        Individual[] individuals = population.getIndividuals();
        double populationFitness = population.getPopulationFitness();
        double rouletteWheelPosition = Math.random() * populationFitness;
        double spinWheel = 0;

        for (Individual individual : individuals){
            spinWheel += individual.getFitness();
            if (spinWheel >= rouletteWheelPosition) {
                return individual;
            }
        }
        return individuals[population.getPopulationSize()-1];
    }

    public Population crossoverPopulation( Population population){
        Population newPopulation = new Population(population.getPopulationSize());

        for (int populationIndex = 0; populationIndex < population.getPopulationSize(); populationIndex++){
            Individual parentA = population.getFittest(populationIndex);

            if (this.crossoverRate > Math.random()  && populationIndex > this.elitismCount){
                Individual offspring = new Individual(parentA.getChromossomeLength());
                Individual parentB = selectParent(population);

                for (int geneIndex = 0; geneIndex < parentA.getChromossomeLength(); geneIndex++){
                    if (0.5> Math.random()){
                        offspring.setGene(geneIndex, parentA.getGene(geneIndex));
                    }else {
                        offspring.setGene(geneIndex, parentB.getGene(geneIndex));
                    }
                }
                newPopulation.setIndividual(populationIndex, offspring);
            }else {
                newPopulation.setIndividual(populationIndex, parentA);
            }
        }
        return newPopulation;
    }

    public Population mutatePopulation(Population population){
        Population newPopulation = new Population(this.populationSize);

        for (int populationIndex = 0; populationIndex < population.getPopulationSize();populationIndex++){
            Individual individual = population.getFittest(populationIndex);

            for (int geneIndex = 0; geneIndex<individual.getChromossomeLength(); geneIndex++){
                if (populationIndex >= this.elitismCount){
                    if (this.mutationRate > Math.random()){
                        individual.setGene(geneIndex, individual.randomChar());
                    }
                }
                newPopulation.setIndividual(populationIndex, individual);
            }
        }
        return newPopulation;
    }

    public boolean isTerminationConditionMet(Population population){
        for (Individual individual : population.getIndividuals()){
            if (individual.getFitness() == 1){
                return true;
            }
        }
        return false;
    }
}
