public class ShackespearMonkey {
    final static int POPULATION_MAX = 700;
    final static double MUTATION_RATE = 0.01;
    final static double CROSSOVER_RATE = 0.95;
    final static int ELITISM = 3;

    final static String TARGET = "IAeamelhor disciplina";

    public static void main(String[] args) {
        int generation = 1;
        GeneticAlgorithm ga = new GeneticAlgorithm(POPULATION_MAX, MUTATION_RATE,
                CROSSOVER_RATE, ELITISM);
        Population population = ga.initPopulation(TARGET.length());
        ga.evalPopulation(population, TARGET);

        while (!ga.isTerminationConditionMet(population)){
            System.out.println("Gen ("+ generation + " best individual "+ population.getFittest(0).toString() + " Population Fitness: "+population.getPopulationFitness());
            population = ga.crossoverPopulation(population);
            population = ga.mutatePopulation(population);
            ga.evalPopulation(population, TARGET);
            generation++;
        }
        System.out.println("found a solution after "+ generation + " generation");
        System.out.println("Best solution " + population.getFittest(0).toString());
    }
}
