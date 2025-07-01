class Person {
  String? name ;
  int? age ;

  Person(this.name,this.age);

  Person.now() {
    print('Hello World!');
  }

  Person.setInfo(name, age) {
    this.name = name;
    this.age = age;
  }
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}
