import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:juncook_master/bloc/counter/counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    // truyền event vào
    // emit phát ra evnet -->
    on<IncreaseEvent>((event, emit) => _increaseEvent(emit));
    on<DecreaseEvent>((event, emit) => _decreaseEvent(emit));
  }

  _increaseEvent(Emitter emit) {
    emit(state + 1);
  }

  _decreaseEvent(Emitter emit) {
    emit(state - 1);
  }
}
