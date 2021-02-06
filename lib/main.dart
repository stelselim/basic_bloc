import 'package:bloc_easy/bloc/bloc_events.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc_counter.dart';
import 'bloc/bloc_states.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterBloc(),
      child: MaterialApp(
        home: ASd(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FlatButton(
        child: Text("GO To"),
        onPressed: () {
          Navigator.pushNamed(context, "/sd");
        },
      ),
    );
  }
}

class ASd extends StatelessWidget {
  const ASd({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
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
    ));
  }
}
