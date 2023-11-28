# percep Dart Package

[![pub package](https://img.shields.io/pub/v/percep.svg)](https://pub.dev/packages/percep)

A Dart package providing a simple implementation of a Neuron and Perceptron for neural network applications.

## Perceptron Class

The `Perceptron` class encapsulates a neuron and provides a simple training method using a dataset.

### Usage

```dart
import 'package:perceptron/src/perceptron.dart';

void main() {
  final dataSet = {
    [0.0, 0.0]: 0.0,
    [0.0, 1.0]: 0.0,
    [1.0, 0.0]: 0.0,
    [1.0, 1.0]: 1.0,
  };

  final perceptron = Perceptron();

  perceptron.train(dataSet);

  dataSet.entries.forEach((element) {
    final y = perceptron.getOutput(element.key);
    print("x=${element.key}  y=$y");
  });
}
```
