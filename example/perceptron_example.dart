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
