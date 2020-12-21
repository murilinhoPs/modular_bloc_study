import 'package:bloc_app/app/home_module/bloc/counter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('CounterBloc', () {
    // ignore: close_sinks
    CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });
    blocTest(
      'Increment test',
      build: () => counterBloc,
      act: (CounterBloc bloc) => bloc.add(CounterIncrementEvent()),
      expect: [
        CounterIncrementState(0),
      ],
    );

    blocTest(
      'Increment test',
      build: () => counterBloc,
      act: (CounterBloc bloc) => bloc.add(CounterDecrementEvent()),
      expect: [
        CounterDecrementState(0),
      ],
    );
  });
}
