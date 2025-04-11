part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class Increment extends CounterState{}

class Decrement extends CounterState{}