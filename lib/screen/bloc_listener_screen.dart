import 'package:bloc_easy/bloc/bloc_counter.dart';
import 'package:bloc_easy/bloc/bloc_events.dart';
import 'package:bloc_easy/bloc/bloc_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocListenerPage extends StatelessWidget {
  static bool hasShown = false;
  const BlocListenerPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumer & Listener BLoc"),
      ),
      body: Center(
          child: BlocListener<CounterBloc, CounterState>(
        listener: (context, state) {
          Scaffold.of(context).showSnackBar(SnackBar(
            content: Text("Listened With BLoc Listener"),
          ));
        },
        listenWhen: (context, state) {
          if (state.counter < 10 && !hasShown) {
            hasShown = true;
            return true;
          }
          return false;
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Consumer",
              textScaleFactor: 2,
            ),
            BlocConsumer<CounterBloc, CounterState>(
              listener: (context, state) {},
              builder: (context, staste) {
                return Text(
                  staste.counter.toString(),
                  textScaleFactor: 4,
                );
              },
            ),
            RaisedButton(
              child: Text("Increment"),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(IncrementEvent());
              },
            ),
            RaisedButton(
              child: Text("Decrement"),
              onPressed: () {
                BlocProvider.of<CounterBloc>(context).add(DecrementEvent());
              },
            ),
          ],
        ),
      )),
    );
  }
}
