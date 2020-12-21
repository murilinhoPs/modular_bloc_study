part of 'counter_bloc.dart';

@immutable
abstract class CounterState extends Equatable {
  const CounterState();

  @override
  List<Object> get props => [];
}

class CounterInitialState extends CounterState {
  const CounterInitialState();

  final int initialValue = 0;

  @override
  List<Object> get props => [initialValue];
}

class CounterIncrementState extends CounterState {
  const CounterIncrementState(this.stateIncremented);

  final int stateIncremented;

  @override
  List<Object> get props => [stateIncremented + 1];
}

class CounterDecrementState extends CounterState {
  const CounterDecrementState(this.stateDecremented);

  final int stateDecremented;

  @override
  List<Object> get props => [stateDecremented - 1];
}
