import 'package:bloc_easy/cubit/complex_cubic_cubit.dart';
import 'package:bloc_easy/simple-cubit/counter2_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ComplexCubitPage extends StatelessWidget {
  const ComplexCubitPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Complex CUBIT "),
        ),
        body: Center(
          child: BlocBuilder<ComplexCubicCubit, ComplexCubicState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    context.read<ComplexCubicCubit>().state.counter.toString(),
                    textScaleFactor: 4,
                  ),
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      context.read<ComplexCubicCubit>().increment();
                      print(context.read<ComplexCubicCubit>().state);
                    },
                  ),
                  RaisedButton(
                    child: Text("Decrement"),
                    onPressed: () {
                      context.read<ComplexCubicCubit>().decrement();
                      // BlocProvider.of<Counter2Cubit>(context)
                      //     .mapToFunctionsToStates(
                      //         CounterCubicFunctions.Decrement);
                    },
                  ),
                ],
              );
            },
          ),
        ));
  }
}
