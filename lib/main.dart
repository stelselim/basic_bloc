import 'package:bloc_easy/cubit/complex_cubic_cubit.dart';
import 'package:bloc_easy/screen/bloc_consumer_screen.dart';
import 'package:bloc_easy/screen/bloc_listener_screen.dart';
import 'package:bloc_easy/screen/complex_cubit_screen.dart';

import 'package:bloc_easy/screen/counter_cubit_screen.dart';
import 'package:bloc_easy/screen/normal_bloc_screen.dart';
import 'package:bloc_easy/simple-cubit/counter2_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bloc_counter.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => Counter2Cubit(),
        ),
        BlocProvider(
          create: (context) => ComplexCubicCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "/bloclistener",
        routes: {
          "/": (context) => NormalBloc(),
          "/blocconsumer": (context) => BlocConsumerPage(),
          "/bloclistener": (context) => BlocListenerPage(),
          "/countercubit": (context) => CounterCubitPage(),
          "/complexcubit": (context) => ComplexCubitPage()
        },
      ),
    );
  }
}
