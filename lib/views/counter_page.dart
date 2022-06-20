import 'package:flutter/material.dart';
import 'package:counter_bloc/views/counter_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_bloc/bloc/counter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // CounterBloc counterBloc =

    // return const CounterView();
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const CounterView(),
    );
  }
}
