// 案例: 把下面類傳換成泛型類 要求MyList裡面可以增加int類型的數據 也可以增加String類型的數據 但是每次調用增加的類型要統一

class MyList<T> {
  List list = <T>[];
  void add<T>(value) {
    this.list.add(value);
  }

  List getList() {
    return list;
  }
}

void main() {
  MyList l1 = MyList();
  l1.add(1);
  l1.add(12);
  l1.add(5);
  print(l1.getList()); // [1, 12, 5]

  MyList l2 = MyList<String>();
  l2.add('Ethan');
  // l.add(12); 會報錯
  print(l2.getList()); // [Ethan]

  MyList l3 = MyList<int >();
  l3.add(11);
  l3.add(12);
  // l3.add('aaa'); 會報錯
  print(l3.getList()); // [11, 12]


  // List list = List.filled(2, ' ');
  // list[0] = '張三';
  // list[1] = '李四';
  // print(list);

  // List list = new List.filled(2, ' ');
  // list[0] = '張三1';
  // list[1] = '李四';
  // print(list);

  // List list = new List<String>.filled(2, ' ');
  // list[0] = '張三';
  // list[1] = '李四';
  // print(list);

  // List list = new List<int>.filled(2, 1);
  // list[0] = 19;
  // // list[1] = '李四'; // 報錯
  // print(list);
}
