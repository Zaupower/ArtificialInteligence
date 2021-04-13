import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;


public class TSPPopulation {
    private List<TSPChromosome> population;
    private final int initialSize;

    TSPPopulation(final TSPGene[] points,
                  final int initialSize){
        this. population = init(points, initialSize);
        this.initialSize = initialSize;

    }

    TSPChromosome getAlpha(){
        return this.population.get(0);
    }
   private List<TSPChromosome> init(final TSPGene[] points, final int initialSize){
        final List<TSPChromosome> eden = new ArrayList<>();
        for (int i=0; i<initialSize; i++){
            final  TSPChromosome chromosome = TSPChromosome.create(points);
            eden.add(chromosome);
        }
        return eden;
   }

   void update(){
        doCrossover();
        doMutation();
        doSpawn();
        doSelection();
   }


    private void doCrossover() {

        final List<TSPChromosome> newPopulation = new ArrayList<>();
        for (final TSPChromosome chromosome : this.population){
            final TSPChromosome partner = getCrossOverPartner(chromosome);
            newPopulation.addAll(Arrays.asList(chromosome.crossOver(partner)));
        }
        this.population.addAll(newPopulation);

    }

    private TSPChromosome getCrossOverPartner(TSPChromosome chromosome) {
        TSPChromosome partner = this.population.get(TSPUtils.randomIndex(this.population.size()));
        while(chromosome == partner){
            partner = this.population.get(TSPUtils.randomIndex(this.population.size()));
        }
        return partner;
    }


    private void doSelection() {

        this.population.sort(Comparator.comparingDouble(TSPChromosome::calculateDistance));
        this.population = this.population.stream().limit(this.initialSize).collect(Collectors.toList());
    }

    private void doSpawn() {

        IntStream.range(0, 1000).forEach(e->
                this.population.add(TSPChromosome.create((TSPUtils.CITIES))));


    }

    private void doMutation() {

        final List<TSPChromosome> newPopulaton = new ArrayList<>();
        for (int i =0; i< this.population.size()/10; i++){
            TSPChromosome mutation = this.population.get(TSPUtils.randomIndex(this.population.size())).mutate();
            newPopulaton.add(mutation);
        }
        this.population.addAll(newPopulaton);

    }

}
