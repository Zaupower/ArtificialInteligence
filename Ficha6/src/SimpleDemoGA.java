import java.util.Random;

public class SimpleDemoGA {
    Population population = new Population();
    //Individuo mas fit
    Individual fittest = new Individual();
    Individual secondFittest = new Individual();

    int generationCount = 0;

    //--------------------------Funcoes de Simple GA Demo
    void mutation() {
        Random rn = new Random();

        //selecionar ponto de mutacao random
        int mutationPoint  =rn.nextInt(population.individuals[0].geneLength);

        //Trocar valores no ponto de mutacao
        if (fittest.genes[mutationPoint] == 0){
            fittest.genes[mutationPoint]  = 1;
        }else {
            fittest.genes[mutationPoint] = 0;
        }

        mutationPoint  = rn.nextInt(population.individuals[0].geneLength);

        if (secondFittest.genes[mutationPoint] == 0){
            secondFittest.genes[mutationPoint]  = 1;
        }else {
            secondFittest.genes[mutationPoint] = 0;
        }

    }

    void crossover() {
        Random rn = new Random();

        //Selecionar random crossover point
        int crossOverPoint = rn.nextInt(population.individuals[0].geneLength);

        //trocar valaroes entre parentes(Pais)
        for (int i = 0; i < crossOverPoint; i++){
            int tmp = fittest.genes[i];
            fittest.genes[i]  = secondFittest.genes[i];
            secondFittest.genes[i]  = tmp;
        }
    }

    void selection() {
        //instanciar fitest
        fittest = population.getFittest();
        //instanciar segundo melhor fittest
        secondFittest = population.getSecondFittest();
    }

    //obter fittness ofspring
    Individual getFittestOffspring(){
        if (fittest.fitness > secondFittest.fitness){
            return fittest;
        }else {
            return secondFittest;
        }
    }

    //Troca o menos fit de fittest offSping
    void addFittestOffsping(){

        //update fitness values offspring
        fittest.calcFitness();
        secondFittest.calcFitness();

        //Obter index do menos fit
        int leatFittestIndex = population.getLeastFittestIndex();

        //Trocar o individuo menos fit de offSpring
        population.individuals[leatFittestIndex]  = getFittestOffspring();
    }
}
