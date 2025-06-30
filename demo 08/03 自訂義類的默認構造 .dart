class Person {
  String? name; // 空值所以要加?
  int? age; // 空值所以要加?
  // 默認構造函式
  Person(this.name, this.age);
  // Person(String name, int age) { // 跟上面那行一樣的功能 但不簡潔
  //   this.name = name;
  //   this.age = age;
  // }
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

void main() {
  Person p1 = new Person('Ethan', 19);

  p1.printInfo(); // Ethan----19

  Person p2 = new Person('Lilly', 17);

  p2.printInfo(); // Lilly----17
}
