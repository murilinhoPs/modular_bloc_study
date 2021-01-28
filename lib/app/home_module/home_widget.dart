import 'package:bloc_app/app/home_module/bloc/counter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final _counterBloc = Modular.get<CounterBloc>();

  @override
  Widget build(BuildContext context) {
    // created once when build is called (not using setState)
    int _currentValue = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Bloc"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times: ',
            ),
            BlocConsumer<CounterBloc, CounterState>(
              cubit: _counterBloc,
              listener: (context, state) => _currentValue = state.value,
              builder: (context, state) {
                return Text(
                  '$_currentValue',
                  style: Theme.of(context).textTheme.headline5,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => _counterBloc.add(
                CounterIncrementEvent(_currentValue),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: FloatingActionButton(
              child: const Icon(Icons.remove),
              onPressed: () => _counterBloc.add(
                CounterDecrementEvent(_currentValue),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
