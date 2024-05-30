class CustomList {
  List<dynamic> list = [];
  List<dynamic> list2 = [];

 void numberOne(int number) {
    list.clear();
    list = List<int>.generate(number, (i) => i + 1);
    list.toList().toString();
  }

  void numberTwo(int number) {
    list.clear();
    List<int> reversed = [];
    List<int> listsss = List<int>.generate(number, (i) => i + 1);
    list.addAll(listsss);
    for (int i = number - 1; i >= 1; i--) {
      reversed.add(i);
    }
    list.addAll(reversed);
  }

  void numberThree(int number) {
    list.clear();
    List<int> listsss = List<int>.generate(number, (i) => i + 1);
    number = number + number;
    list.add(number);
    int increment = number;
    for (int i = 0; i <= listsss.length; i++) {
      number = number + increment + 1;
      list.add(number);
    }
  }

  void numberFour(int number) {
    list2.clear();
   
    List<int> lists = List<int>.generate(number, (i) => i + 1);
    for (int i = 1; i <= lists.length; i++) {
      if (i % 5 == 0) {
        list2.add("LIMA");
      } else if (i % 7 == 0) {
        list2.add("TUJUH");
      } else {
        list2.add(i);
      }
    }
  }
}
