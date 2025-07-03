abstract class A {
  String? name;
  void printA();
}

abstract class B {
  String? name;
  void printB();
}

/* 實現多個接口 */
class C implements A, B {
  @override
  String? name;

  @override
  void printA() {
    print('我是A');
  }

  @override
  void printB() {
    print('我是B');
  }
}

void main() {
  C c = C();
  c.printA(); // 我是A
  c.printB(); // 我是B
}
