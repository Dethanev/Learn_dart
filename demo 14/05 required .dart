/*
required 關鍵詞：

  最開始 @required 是註解

  現在它已經作為內置修飾符。

  主要用於允許根據需要標記任何命名參數（函數或類），使得它們不為空。因為可選參數中必須有個 required。
*/
// 表示name age 必須傳入命名參數
class Person {
  late String name;
  late int age;

  Person({required this.name, required this.age}); // 表示name age 必須傳入

  String getName() {
    return '${this.name}------${this.age}';
  }
}

void main() {
  Person p = Person(
    name: '張三',
    age: 19
  );
  print(p.getName());
}
