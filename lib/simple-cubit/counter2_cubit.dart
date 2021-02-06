import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter2_state.dart';

enum CounterCubicFunctions {
  Increment,
  Decrement,
}

class Counter2Cubit extends Cubit<int> {
  Counter2Cubit() : super(0);

  void increment() => emit(state - 1);

  mapToFunctionsToStates(CounterCubicFunctions cubicFunctions) {
    if (cubicFunctions == CounterCubicFunctions.Increment) {
      emit(state + 1);
    }
    if (cubicFunctions == CounterCubicFunctions.Decrement) {
      emit(state - 1);
    }
  }
}
