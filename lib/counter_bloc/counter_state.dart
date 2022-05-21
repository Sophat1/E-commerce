part of 'counter_bloc.dart';

class CounterState {
  late int counter;
  CounterState({required this.counter});
}

class CounterInit extends CounterState {
  CounterInit({required int counter}) : super(counter: 0);
}