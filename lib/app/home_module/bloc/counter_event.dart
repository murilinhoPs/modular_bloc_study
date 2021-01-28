part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent extends Equatable {
  const CounterEvent();

  @override
  List<Object> get props => [];
}

class CounterIncrementEvent extends CounterEvent {
  final int incrementValue;

  CounterIncrementEvent(this.incrementValue);

  @override
  List<Object> get props => [incrementValue];
}

class CounterDecrementEvent extends CounterEvent {
  final int decrementValue;

  CounterDecrementEvent(this.decrementValue);

  @override
  List<Object> get props => [decrementValue];
}
