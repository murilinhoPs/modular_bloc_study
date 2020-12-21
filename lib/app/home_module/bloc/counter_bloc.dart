import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';
part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitialState());

  // Events come in to de bloc (skink)
  // States come out of the bloc (stream)

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CounterIncrementEvent) {
      int stateValue = state.stateValue;

      yield CounterIncrementState(stateValue);
    } else if (event is CounterDecrementEvent) {
      int stateValue = state.stateValue;

      yield CounterDecrementState(stateValue);
    }
  }
}
