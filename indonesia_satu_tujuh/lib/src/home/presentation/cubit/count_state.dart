part of 'count_cubit.dart';

@immutable
sealed class CountState {}

final class CountInitial extends CountState {}

final class CountButtonNumberOne extends CountState {
  final List<dynamic> list;
  CountButtonNumberOne({required this.list});
}

final class CountButtonNumberTwo extends CountState {
  final List<dynamic> list;
  CountButtonNumberTwo({required this.list});
}

final class CountButtonNumberThree extends CountState {
  final List<dynamic> list;
  CountButtonNumberThree({required this.list});
}

final class CountButtonNumberFour extends CountState {
  final List<dynamic> list;
  CountButtonNumberFour({required this.list});
}
