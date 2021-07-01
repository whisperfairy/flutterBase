part of 'counter_cubit.dart';

class CounterState extends Equatable {
  int count;

  CounterState({this.count = 0});

  @override
  List<Object> get props => [count];

  CounterState addCount(int value) {
    return clone()..count = count + value;
  }
  clone() {
    return CounterState(count: count);
  }
}

