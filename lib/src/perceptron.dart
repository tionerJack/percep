library;

import 'package:perceptron/src/Neuron.dart';

class Perceptron {
  late Neuron neuron;

  Perceptron();

  double getOutput(List<double> input) => neuron.getOutput(input);

  train(Map<List<double>, double> dataSet, {int steps = 10}) {
    int i = steps;

    neuron = Neuron(dataSet.keys.first.length);

    while (i > 0) {
      dataSet.entries.forEach((element) {
        neuron.synapse(element.key, element.value);
      });

      i--;
    }
  }
}
