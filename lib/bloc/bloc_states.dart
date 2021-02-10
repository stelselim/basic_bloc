import 'package:flutter/foundation.dart';

@immutable
class CounterState {
  final int counter;

  CounterState({@required this.counter});

  CounterState copyWith({
    int counter,
  }) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }
}
