part of 'counter_bloc.dart';

@immutable
abstract class CounterState extends Equatable {
  final int stateValue;

  const CounterState(this.stateValue);

  @override
  List<Object> get props => [stateValue];
}

class CounterInitialState extends CounterState {
  const CounterInitialState() : super(0);
}

class CounterIncrementState extends CounterState {
  const CounterIncrementState(int stateIncremented)
      : super(stateIncremented + 1);
}

class CounterDecrementState extends CounterState {
  const CounterDecrementState(int stateDecremented)
      : super(stateDecremented - 1);
}
