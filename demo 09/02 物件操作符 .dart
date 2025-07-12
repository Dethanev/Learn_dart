/*
Dart 中的物件操作符：

?    條件運算符（已了解）
as   類型轉換
is   類型判斷
..   級聯操作（連續調用）

---

💡 補充說明

- as：
  用於明確告訴編譯器把某個物件視為某個型別。
  範例：(obj as Person).printInfo();

- is：
  用來判斷物件是否是某個型別，回傳 true/false。
  範例：if (p is Person) { p.printInfo(); }

- ..（級聯操作符）：
  可以在同一個物件上連續調用多個方法或設定屬性，常用在建構物件後快速配置。
  範例：
    var p = Person("Ethan", 20)
      ..age = 21
      ..printInfo();

---
*/

class Person {
  String name;
  num age;

  Person(this.name, this.age);

  void printInfo() {
    print("${this.name} --- ${this.age}");
  }
}

void main() {

/* as */
  var p1;

  p1 = ' ';
  p1 = new Person('張三1', 18);
  // p1.printInfo();  不推
  (p1 as Person).printInfo(); // 推

/* .. */
  Person p2 = new Person('張三', 19);

  /* 一般 */
    // p2.name = "Ethan";
    // p2.age = 18;
    // p2.printInfo();
  /* 更簡潔 */
    p2
      ..name = '李四' // 不用分號隔開
      ..age = 30
      ..printInfo();
}
