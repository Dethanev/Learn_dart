/*
required 關鍵詞：

  最開始 @required 是註解

  現在它已經作為內置修飾符。

  主要用於允許根據需要標記任何命名參數（函數或類），使得它們不為空。因為可選參數中必須有個 required。
*/
// name可以傳入也可以不傳入命名參數 age必須傳入命名參數
class Person {
  String? name; // 可空屬性
  int age;

  Person({this.name, required this.age});

  String getName() {
    return '${this.name}------${this.age}';
  }
}

void main() {
  Person p = Person(name: '張三', age: 19);
  print(p.getName()); // 張三------19

  Person p1 = Person(age: 19);
  print(p1.getName()); // null------19

  
}
