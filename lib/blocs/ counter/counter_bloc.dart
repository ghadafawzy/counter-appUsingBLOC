import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterInitial> {
  CounterBloc() : super(CounterInitial(counter: 0)) {
    on<IncrementCounterEvent>((event, emit) {
      emit(CounterInitial(counter: state.counter + 1));
    });

    on<DecrementCounterEvent>((event, emit) {
      emit(CounterInitial(counter: state.counter - 1));
    });
  }
}