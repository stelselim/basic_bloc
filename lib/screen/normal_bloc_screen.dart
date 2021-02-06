import 'package:bloc_easy/bloc/bloc_counter.dart';
import 'package:bloc_easy/bloc/bloc_events.dart';
import 'package:bloc_easy/bloc/bloc_states.dart';
import 'package:bloc_easy/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NormalBloc extends StatelessWidget {
  const NormalBloc({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Normal BLoc"),
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                    print("B" + state.counter.toString());

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
            );
          },
        ),
      ),
    );
  }
}
