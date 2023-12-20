import 'package:countercubit/counter_screen.dart';
import 'package:countercubit/cubitStates/cubit_functions.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => counterCubit()),
      ],
      child: MaterialApp(
        home: CounterScreenView(),
      ),
    );
  }
}
