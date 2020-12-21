import 'package:bloc_app/app/home_module/home_cubit.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CounterCubit', () {
    // ignore: close_sinks
    CounterCubit counterCubit;

    setUp(() {
      counterCubit = CounterCubit();
    });

    blocTest(
      'Increment test',
      build: () => counterCubit,
      act: (CounterCubit cubit) => cubit.increment(),
      expect: [1],
    );

    blocTest(
      'Increment test',
      build: () => counterCubit,
      act: (CounterCubit cubit) => cubit.decrement(),
      expect: [-1],
    );
  });
}
