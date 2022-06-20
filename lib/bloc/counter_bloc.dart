import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(counter: 0)) {
    on<CounterIncrementPressed>((event, emit) {
      print("in CounterIncrementPressed");
      emit(CounterState(counter: state.counter + 1));
    });

    on<CounterDecrementPressed>((event, emit) {
      print("in CounterDecrementPressed");
      emit(CounterState(counter: state.counter - 1));
    });
  }
}

// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(const CounterState(counter: 0));

//   @override
//   Stream<CounterState> mapEventToState(CounterEvent event) async* {
//     print(event.toString());
//     if (event is CounterIncrementPressed) {
//       print("inc");
//       yield CounterState(counter: state.counter + 1);
//     } else if (state is CounterDecrementPressed) {
//       yield CounterState(counter: state.counter - 1);
//     }
//   }
// }
