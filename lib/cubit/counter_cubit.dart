import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());
  void increment() => emit(state.addCount(1));

  /// Subtract 1 from the current state.
  void decrement() => emit(state.addCount(-1));
}
