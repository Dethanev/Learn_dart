/*
extends 抽象類 和 implements 的區別：

  1.如果要復用抽象類裡面的方法，並且要用抽象方法約束自類的話我們就用 extends 繼承抽象類。

  2.如果只是把抽象類當作標準去實現的話我們就用 implements 實現抽象類。

案例：定義規範一個 Animal 類要求它的子類必須包含 eat 方法。

*/

abstract class Animal {
  void eat(); // 抽象方法
  // void run(); 直接把抽象類當父類用 很多人這樣用
}

/* 不允許同名類別 要嘛放抽象類當父類 要嘛重新命名*/
// class Animal {
//   void run() {
//     print('跑');
//   }
// }

/* 重新命名  少人用 大專案用*/
class BaseAnimal implements Animal {
  // implements：強制 BaseAnimal(自訂名字) 必須實作 Animal 的方法eat()
  @override
  void eat() {
    print('吃');
  }

  void run() {
    print('跑');
  }
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
  Animal d = Dog();
  d.eat(); // 狗在啃骨頭

  Animal c = Cat();
  c.eat(); // 貓在吃魚

  BaseAnimal a = BaseAnimal();
  a.run(); // 跑

}
