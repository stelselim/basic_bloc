import 'package:bloc_easy/bloc/bloc_events.dart';
import 'package:bloc_easy/bloc/bloc_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0));

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is IncrementEvent) {
      final st = state.copyWith(counter: state.counter + 1);
      yield st;
    }
    if (event is DecrementEvent) {
      final st = state.copyWith(counter: state.counter - 1);
      yield st;
    }
  }
}
