import 'package:bloc/bloc.dart';
import 'package:countercubit/cubitStates/cubit_state.dart';

class counterCubit extends Cubit<CubitValueState> {
  int counter = 0;

  counterCubit() : super(initialValue());

  void increaseCounter() {
    counter++;
    emit(increaseValue(counter: counter));
  }

  void decreaseCounter() {
    counter--;
    emit(decreaseValue(counter: counter));
  }
}
