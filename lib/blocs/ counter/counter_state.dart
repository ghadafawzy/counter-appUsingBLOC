part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {
  int counter ;
  CounterInitial({required this.counter});
}
