/*
Dart 中的多態：

  1. 允許將子類型型別的指針賦值給父類型的指針，同一個函數調用會有不同的執行效果。

  2. 子類的實例賦值給父類的引用。

  3. 多態就是父類定義一個方法不去實現，讓繼承他的子類去實現，每個子類有不同的表現。
*/

abstract class Animal {
  void eat(); // 抽象方法
}

class Dog extends Animal {
  @override
  void eat() {
    print('狗在啃骨頭');
  }

  void run() {
    print('run');
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print('貓在吃魚');
  }

  void run() {
    print('run');
  }
}

void main() {
  // Dog d = Dog();
  // d.eat(); // 狗在啃骨頭
  // d.run();

  Animal d = Dog();
  d.eat(); // 狗在啃骨頭

  Animal c = Cat();
  c.eat(); // 貓在吃魚


  // Cat c = Cat();
  // c.eat(); // 貓在吃魚
}
