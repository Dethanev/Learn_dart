/*
mixins的實例類型是什麼?
很簡單 mixins的類型就是其超類的子類型
*/

mixin class A {
  String info = "this is A";
  void printA() {
    print('A');
  }
}

mixin class B {
  void printB() {
    print('B');
  }
}

class C with A, B {}

void main() {
  var c = C();

  print(c.info); // this is A
  // print(c is A); // true
  // print(c is B); // true

  // print(c is Object); // true
}
