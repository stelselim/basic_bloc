import 'package:bloc/bloc.dart';
part 'complex_cubic_state.dart';

class ComplexCubicCubit extends Cubit<ComplexCubicState> {
  ComplexCubicCubit() : super(ComplexCubicState(0));

  void increment() => emit(state.copyWith(counter: state.counter + 1));
  void decrement() => emit(state.copyWith(counter: state.counter - 1));
}
