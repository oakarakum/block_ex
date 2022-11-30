part of 'counter_bloc.dart';

class CounterState extends Equatable {
  const CounterState(this.count);
  final int count;

  @override
  List<Object> get props => [count];
}

// class CounterInitial extends CounterState {}
  /*  class CounterIncrement extends CounterState{
  CounterIncrement(super.count);
}
  class CounterDecrement extends CounterState{
  CounterDecrement(super.count);
} */
 