/*
mixins 的中文意思是混入，就是在類中混入其他功能。

在 Dart 中可以使用 mixins 實現類似多繼承的功能。

因為 mixins 使用的條件，隨著 Dart 版本一直在變；這裡講的是 Dart 2.x 中使用 mixins 的條件：

  1. 作為 mixins 的類只能繼承自 Object，不能繼承其他類
  2. 作為 mixins 的類不能有構造函數
  3. 一個類可以 mixins 多個 mixins 類
  4. mixins 絕不是繼承，也不是接口，而是一種全新的特性
*/
class Person {
  String? name;
  num? age;

  Person(this.name, this.age);
  printInfo() {
    print('${this.name}-----${this.age}');
  }
}

/* 不能連續重複繼承 所以不能寫 class A extends Person */
mixin class A {
  /* 裡面不能加默認構造函式 A(){}; */
  String info = "this is A";
  void printA() {
    print('A');
  }

  void run() {
    print('A Run');
  }
}

mixin class B {
  /* 裡面不能加默認構造函式 B(){}; */
  void printB() {
    print('B');
  }

  void run() {
    print('B Run');
  }
}

/*class C with Person,A, B {} 這樣宣告也可以*/
/* 下面這種宣告也可以 但多了可以繼承Person的默認構造函式 */
class C extends Person with A, B {
  /* 這兩個就不用再宣告一次了 */
  // String? name;
  // num? age;

  C(String name, num age) : super(name, age);
}

void main() {
  C c = C('Ethan', 19);

  c.printInfo();
  // c.printA(); // A
  // c.printB(); // B
  c.run(); // B Run 同樣的方法 會看最後的順序是誰
  /* 就算Person有run(){}但還是輸出B Run 一樣會看最後的順序是誰*/
}
