import 'package:bloc_easy/cubit/counter2_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubitPage extends StatelessWidget {
  const CounterCubitPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("COUNTER CUBIT "),
        ),
        body: Center(
          child: BlocBuilder<Counter2Cubit, int>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    context.read<Counter2Cubit>().state.toString(),
                    textScaleFactor: 4,
                  ),
                  RaisedButton(
                    child: Text("Increment"),
                    onPressed: () {
                      context.read<Counter2Cubit>().mapToFunctionsToStates(
                          CounterCubicFunctions.Increment);
                      print(context.read<Counter2Cubit>().state);
                    },
                  ),
                  RaisedButton(
                    child: Text("Decrement"),
                    onPressed: () {
                      context.read<Counter2Cubit>().increment();
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
