# Neuron Dart Package

[![pub package](https://img.shields.io/pub/v/neuron.svg)](https://pub.dev/packages/neuron)

A Dart package providing a simple implementation of a Neuron and Perceptron for neural network applications.

## Neuron Class

The `Neuron` class represents a basic neuron with adjustable weights for synapses. It includes a default activation function and the ability to train through the `synapse` method.

### Usage

```dart
import 'package:neuron/neuron.dart';

void main() {
  // Create a neuron with 3 inputs
  Neuron neuron = Neuron(3);

  // Input values
  List<double> input = [0.1, 0.2, 0.3];

  // Get the output of the neuron
  double output = neuron.getOutput(input);

  // Train the neuron with a dataset
  Map<List<double>, double> dataSet = {
    [0.1, 0.2, 0.3]: 1.0,
    [0.4, 0.5, 0.6]: 0.0,
  };

  // Train for 10 steps
  neuron.train(dataSet, steps: 10);
}
