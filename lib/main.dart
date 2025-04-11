// ignore_for_file: prefer_const_constructors

import 'package:counter/features/counter/presentation/manager/cubit/counter_cubit.dart';
import 'package:counter/features/counter/presentation/ui/widgets/counter_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (context) => CounterCubit(),
        child: CounterScreen(),
      ),
    );
  }
}
