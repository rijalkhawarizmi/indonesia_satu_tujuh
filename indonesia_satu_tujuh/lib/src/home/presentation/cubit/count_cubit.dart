import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/util/custom_list.dart';

part 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(CountInitial());
  CustomList customList = CustomList();
  void calculateNumber({required int buttonNumber, required int inputNumber}) {
    if (buttonNumber == 1) {
      customList.numberOne(inputNumber);
      emit(CountButtonNumberOne(list: customList.list));
    } else if (buttonNumber == 2) {
      customList.numberTwo(inputNumber);
      emit(CountButtonNumberTwo(list: customList.list));
    } else if (buttonNumber == 3) {
      customList.numberThree(inputNumber);
      emit(CountButtonNumberThree(list: customList.list));
    } else if (buttonNumber == 4) {
      customList.numberFour(inputNumber);
      emit(CountButtonNumberFour(list: customList.list2));
    }
  }
}
