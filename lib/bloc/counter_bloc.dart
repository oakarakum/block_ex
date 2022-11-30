import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(0)) {
    on<CounterEvent>((event, emit) {
      // print("${event}");
      //mapEventToState(event);
      emit(CounterState(state.count + 1));
      print(event);
    });
  }
  // super'in içinde CounterInitial() yazıyordu.
  //
  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is CounterIncrement) {
      yield CounterState(state.count + 1);
    } else if (event is CounterDecrement) {
      yield CounterState(state.count - 1);
    }
  }
}
