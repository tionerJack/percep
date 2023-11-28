import 'dart:math';

class Neuron {
  late List<double> w;

  double Function(double value) activate =
      (double value) => value - (.5) > 0 ? 1 : 0;

  Random random = Random(DateTime.now().microsecond);

  Neuron(int inputs, {double Function(double value)? activate}) {
    this.activate = activate ?? this.activate;
    this.w = List.generate(inputs, (index) => Random().nextDouble());
  }

  double _dotProduct(List<double> x) => x.indexed.fold(0.0,
      (previousValue, element) => previousValue + w[element.$1] * element.$2);

  double getOutput(List<double> x) => activate(_dotProduct(x));

  synapse(List<double> x, double expected, {double ratio = .1}) {
    double y = getOutput(x);
    double error = expected - y;
    for (int i = 0; i < x.length; i++) {
      w[i] += error * x[i] * ratio;
    }
  }
}
