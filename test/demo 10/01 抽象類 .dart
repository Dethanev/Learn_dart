/*
Dart 中抽象類：Dart 抽象類主要用於定義標準，子類可以繼承抽象類，也可以實現抽象接口。

  1.抽象類通過 abstract 關鍵字來定義。

  2.Dart 中的抽象方法不能用 abstract 聲明，Dart 中沒有方法體的方法我們稱為抽象方法。

  3.如果子類繼承抽象類必須要實現裡面的抽象方法。

  4.如果把抽象類當作接口實現的話必須要實現抽象類裡面定義的所有屬性和方法。

  5.抽象類不能被實例化，只有繼承它的子類可以。

*/

abstract class Animal {
  void eat(); // 抽象方法
  void run(); // 抽象方法

  void printInfo() {
    print("我是一個抽象類裡面的普通方法");
  }
}

class Dog extends Animal {
  @override
  void eat() {
    print('狗在啃骨頭');
  }

  @override
  void run() {
    print('狗在跑');
  }
}

class Cat extends Animal {
  @override
  void eat() {
    print('貓在吃魚');
  }

  @override
  void run() {
    print('貓在跑');
  }
}

void main() {
  Dog d = Dog();
  d.eat(); // 狗在啃骨頭
  d.run(); // 狗在跑
  d.printInfo(); // 我是一個抽象類裡面的普通方法

  Cat c = Cat();
  c.eat(); // 貓在吃魚
  c.run(); // 貓在跑
  c.printInfo(); // 我是一個抽象類裡面的普通方法

  // Animal a = Animal(); 抽象類不能實例化
}
