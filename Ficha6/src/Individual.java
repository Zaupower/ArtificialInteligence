import java.util.Random;

public class Individual {
    int fitness = 0;
    int[] genes = new int[5];
    int geneLength = 5;

    public Individual(){
        Random rn  = new Random();

        //Setar os genes random
        for (int i = 0; i< genes.length; i++){
            genes[i] =  Math.abs(rn.nextInt() % 2);
        }
        fitness = 0;
    }

    public void calcFitness() {
        fitness = 0;
        for (int i = 0; i < 5; i++){
            if (genes[i] == 1){
                ++fitness;
            }
        }
    }
}
