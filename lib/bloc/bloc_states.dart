import 'package:flutter/foundation.dart';

class CounterState {
  int counter;

  CounterState({@required this.counter});

  CounterState copyWith({
    int counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}
