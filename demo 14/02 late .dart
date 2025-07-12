/* late 關鍵字主要用於延遲初始化 */

class Person {
  late String name;
  late int age;

  void setName(String name, int age) {
    this.name = name;
    this.age = age;
  }

  String getName() {
    return '${this.name}------${this.age}';
  }
}

void main() {
  Person p = Person();
  p.setName('Ethan', 19);
  print(p.getName());
}
