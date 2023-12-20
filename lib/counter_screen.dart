import 'package:countercubit/cubitStates/cubit_functions.dart';
import 'package:countercubit/cubitStates/cubit_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreenView extends StatefulWidget {
  const CounterScreenView({super.key});

  @override
  State<CounterScreenView> createState() => _CounterScreenViewState();
}

class _CounterScreenViewState extends State<CounterScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          BlocBuilder<counterCubit, CubitValueState>(builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (state is increaseValue)
                  ? Text(
                      state.counter.toString(),
                      style: TextStyle(fontSize: 30),
                    )
                  : Text(
                      '0',
                      style: TextStyle(fontSize: 30),
                    ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CupertinoButton(
                    onPressed: () {
                      context.read<counterCubit>().increaseCounter();
                    },
                    child: CircleAvatar(
                      child: Icon(CupertinoIcons.plus),
                    ),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      context.read<counterCubit>().decreaseCounter();
                    },
                    child: CircleAvatar(
                      child: Icon(CupertinoIcons.minus),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}
