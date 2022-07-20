import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(CountInitial());
  static CountCubit get (BuildContext context){
    return BlocProvider.of<CountCubit>(context);
      }
  int counter = 1;
  void increment (){
    counter++;
    emit(CountIncrement());
  }
  void decrement (){
    counter--;
    emit(CountDecrement());
  }

}
