import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterStateInitial());

  // Events come in to de bloc (skink)
  // States come out of the bloc (stream)

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CounterIncrementEvent) {
      final int stateValue = event.incrementValue + 1;

      yield CounterStateUpdated(updatedCount: stateValue);
    } else if (event is CounterDecrementEvent) {
      final int stateValue = event.decrementValue - 1;

      yield CounterStateUpdated(updatedCount: stateValue);
    }
  }
}
