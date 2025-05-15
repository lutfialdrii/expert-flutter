import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(0));

  void increment() {
    emit(CounterState(state.value + 1));
  }

  void decrement() {
    emit(CounterState(state.value - 1));
  }
}
