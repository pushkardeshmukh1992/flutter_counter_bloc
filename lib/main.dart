import 'package:flutter/material.dart';
import 'app.dart';
import 'package:bloc/bloc.dart';

// void main() {
//   runApp(const CounterApp());
// }

class CounterObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);

    print('${bloc.runtimeType} $change');
  }
}

void main() {
  BlocOverrides.runZoned(() => runApp(const CounterApp()),
      blocObserver: CounterObserver());
}
