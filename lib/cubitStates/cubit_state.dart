import 'package:equatable/equatable.dart';

abstract class CubitValueState extends Equatable {
  const CubitValueState();
}

class initialValue extends CubitValueState {
  @override
  List<Object?> get props => [];
}

class increaseValue extends CubitValueState {
  final int counter;

  const increaseValue({required this.counter});

  @override
  List<Object?> get props => [counter];
}

class decreaseValue extends CubitValueState {
  final int counter;

  const decreaseValue({required this.counter});

  @override
  List<Object?> get props => [counter];
}
