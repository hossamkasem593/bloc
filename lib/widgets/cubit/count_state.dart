part of 'count_cubit.dart';

@immutable
abstract class CountState{}

class CountInitial extends CountState {}
class CountIncrement extends CountState{}
class CountDecrement extends CountState{}
