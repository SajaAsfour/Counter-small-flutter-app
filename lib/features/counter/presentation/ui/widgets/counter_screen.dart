// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:counter/features/counter/presentation/manager/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App"),
      ),
      body: BlocBuilder<CounterCubit, CounterState>(
        builder: (context, state) {
          var counterCubit = context.read<CounterCubit>();
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                counterCubit.counter.toString(),
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {
                        counterCubit.increment();
                      },
                      icon: Icon(
                        Icons.add,
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        counterCubit.decrement();
                      },
                      icon: Icon(
                        Icons.remove,
                        size: 30,
                      ))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
