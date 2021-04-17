import java.util.Random;

public class main {
    public static void main(String[] args) {
        Random rn = new Random();

        SimpleDemoGA demo = new SimpleDemoGA();

        demo.population.initializePopulation(10);

        System.out.println("Generation: "+demo.generationCount + " Fittest: "+demo.population.fittest);

        //Enquanto o valor do fit da pop nao for inferior a 5 faz as seguntyes tarefas
        while (demo.population.fittest < 5){
            ++demo.generationCount;
            //Selecionar os melhores genes
            demo.selection();

            demo.crossover();

            if (rn.nextInt()%7 < 5){
                demo.mutation();
            }

            //adicionar offSpings á populacao
            demo.addFittestOffsping();

            //Calcular novo valor de fittness
            demo.population.calculateFitness();
            System.out.println("Generation: " + demo.generationCount + " Fittest: " + demo.population.fittest);
        }
        System.out.println("\nSolution found in generation " + demo.generationCount);
        System.out.println("Fitness: "+demo.population.getFittest().fitness);
        System.out.print("Genes: ");

        for (int i = 0; i< 5; i++ ){
            System.out.println(demo.population.getFittest().genes[i]);
        }

        System.out.println("");
    }
}
