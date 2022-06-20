import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: BlocBuilder<CounterBloc, CounterState>(builder: (context, state) {
        return Center(child: Text("You pressed ${state.counter} times"));
      }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              print("Should increment counter");
              counterBloc.add(CounterIncrementPressed());
              // context.read<CounterBloc>().add(CounterIncrementPressed());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 30),
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterDecrementPressed());
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
