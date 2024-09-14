import 'package:equatable/equatable.dart';
// part of 'counter_bloc.dart';
//
// @immutable
class CounterState extends Equatable{

   final int Counter;

  CounterState({this.Counter=0});

  @override
  // TODO: implement props
  List<Object?> get props => [Counter];

  CounterState copyWith ({int? Counter}){
    return CounterState(
      Counter: Counter ?? this.Counter,
    );
  }

}


