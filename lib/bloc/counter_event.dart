import 'package:equatable/equatable.dart';

//part of 'counter_bloc.dart';

//@immutable
abstract class CounterEvent extends Equatable {

  CounterEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

class IncrementCounter extends CounterEvent{}

class DecrementCounter extends CounterEvent{}
