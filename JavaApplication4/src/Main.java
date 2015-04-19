import org.neuroph.core.NeuralNetwork;

public class Main {

 public static void main(String[] args) {
     try {
            MainForm.main(null);
        } catch (Exception e) {
            e.printStackTrace();
        }
     
//    // load trained neural network saved with Neuroph Studio (specify some existing neural network file here)
//    NeuralNetwork nnet = NeuralNetwork.load("NewNeuralNetwork1.nnet");
//    // set network input which we want to classify
//    nnet.setInput(1,2,3,4,5,6,7,8);
//    // process input/calculate network
//    nnet.calculate();
//    // get networkoutput/classification result
//    double[] output = nnet.getOutput();
//    System.out.printf(String.valueOf(output[0])); 
 }
}