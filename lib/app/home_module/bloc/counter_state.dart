part of 'counter_bloc.dart';

@immutable
abstract class CounterState extends Equatable {
  final int value;

  const CounterState(this.value);

  @override
  List<Object> get props => [value];
}

class CounterStateInitial extends CounterState {
  const CounterStateInitial() : super(0);
}

class CounterStateUpdated extends CounterState {
  final int updatedCount;

  const CounterStateUpdated({@required this.updatedCount})
      : super(updatedCount);

  @override
  List<Object> get props => [updatedCount];
}
