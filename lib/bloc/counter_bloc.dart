import 'dart:ffi';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'counter_event.dart';
import 'counter_state.dart';

//part 'counter_event.dart';
//part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
    //on<SwitchEvent>(_changeSwitchButton);
  }

  void _increment(IncrementCounter event, Emitter<CounterState> emit) {
    emit(state.copyWith(Counter:  state.Counter+ 1));
  }

  void _decrement(DecrementCounter event, Emitter<CounterState> emit) {
    emit(
      state.copyWith(Counter: state.Counter - 1),
    );
  }

  // void _changeSwitchButton(SwitchEvent event, Emitter<CounterState> emit) {
  //   emit(
  //     state.copyWith(isSwitchOn: !state.isSwitchOn),
  //   );
  // }
}
