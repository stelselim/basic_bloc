part of 'complex_cubic_cubit.dart';

class ComplexCubicState {
  final int counter;

  ComplexCubicState(this.counter);

  ComplexCubicState copyWith({
    int counter,
  }) {
    return ComplexCubicState(
      counter ?? this.counter,
    );
  }
}
