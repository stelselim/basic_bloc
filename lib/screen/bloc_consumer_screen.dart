import 'package:bloc_easy/bloc/bloc_counter.dart';
import 'package:bloc_easy/bloc/bloc_events.dart';
import 'package:bloc_easy/bloc/bloc_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocConsumerPage extends StatelessWidget {
  const BlocConsumerPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumer BLoc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "With Context",
              textScaleFactor: 2,
            ),
            Text(
              context.read<CounterBloc>().state.counter.toString(),
              textScaleFactor: 4,
            ),
            SizedBox(
              height: 25,
            ),
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
      ),
    );
  }
}
