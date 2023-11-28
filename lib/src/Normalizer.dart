import 'dart:ffi';

class Normalizer {
  late double max;
  late double min;
  late double tam;

  norm(List<List<double>> m) {
    List<double> flat = m.fold(
        <double>[], (previousValue, element) => previousValue..addAll(element));

    flat.sort((a, b) => b.compareTo(a));

    min = flat.first;
    max = flat.last;
    tam = max - min;

    for (int i = 0; i < m.length; i++) {
      for (int j = 0; j < m[i].length; j++) {
        m[i][j] = (m[i][j] - min) / tam;
      }
    }
  }

  getValueOf(double d) {
    return d * tam + min;
  }
}
