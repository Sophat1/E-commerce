// import 'package:flutter_bloc/flutter_bloc.dart';

// part 'counter_state.dart';

// class CounterBloc extends Bloc<CounterEvent, CounterState> {
//   CounterBloc() : super(CounterInit(counter: 0)) {
//     on<CounterEvent>((event, emit) {
//       if (event is IncrementCounter) {
//         emit(CounterState(counter: state.counter + 1));
//       }
//       if (event is DecrmentCounter) {
//         if (state.counter <= 0) {
//           CounterInit(counter: 0);
//         } else {
//           emit(CounterState(counter: state.counter - 1));
//         }
//       }
//     });
//   }
// }

