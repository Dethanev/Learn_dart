/*
Dart 物件導向（OOP）總整理

---

✨ 什麼是物件導向？

物件導向（Object-Oriented Programming, OOP）是一種編程思想，把程式結構視為由「物件」組成，強調封裝、繼承、多態。

---

📦 類別（Class）

- 類別是一種自訂的資料型別，用來描述一群物件共同的屬性（field）與方法（method）。
- 類別就像一個「模具」，用來建立（instantiate）多個物件。

範例：
class Person {
  String name;
  int age;

  void sayHello() {
    print("Hello, 我是 $name，今年 $age 歲");
  }
}

---

👤 物件（Object）

- 物件是根據類別建立出來的實例（instance）。
- 每個物件都有獨立的屬性值與方法。

範例：
var p = Person();
p.name = "小明";
p.age = 18;
p.sayHello(); // Hello, 我是 小明，今年 18 歲

---

🛡️ 封裝（Encapsulation）

- 把資料（屬性）與行為（方法）包裝在類別中，對外只暴露需要的方法，隱藏內部細節。
- Dart 中可以用下劃線 _ 開頭的成員變數表示私有。

---

🧬 繼承（Inheritance）

- 子類別可以繼承父類別，獲得父類別的屬性與方法，並且可以擴充或改寫（override）。
- Dart 支援單繼承，不支援多繼承。

範例：
class Student extends Person {
  String school;

  @override
  void sayHello() {
    print("Hello, 我是 $name，來自 $school");
  }
}

---

🔁 多態（Polymorphism）

- 相同的方法呼叫，根據物件的實際類型會有不同表現。
- 主要靠繼承與方法覆寫（override）來實現。

---

🌀 抽象類別（Abstract Class）

- 不能被實例化，只能被繼承，用來定義子類別必須實作的方法。

範例：
abstract class Animal {
  void makeSound(); // 抽象方法，無實作
}

class Dog extends Animal {
  @override
  void makeSound() {
    print("汪汪");
  }
}

---

🔧 接口（Interface）& implements

- Dart 沒有單獨的 interface 關鍵字，每個類別都可以被當作 interface 使用。
- 使用 implements 來實作多個接口，必須覆寫所有成員。

範例：
class Runner {
  void run() => print("跑步中...");
}

class Swimmer {
  void swim() => print("游泳中...");
}

class Athlete implements Runner, Swimmer {
  @override
  void run() => print("運動員在跑步");

  @override
  void swim() => print("運動員在游泳");
}

---

⚡ Mixin（混入）

- 用來把多個類別的功能混合到一個類別裡，避免多重繼承問題。
- 使用 mixin 關鍵字或 with。

範例：
mixin Flyer {
  void fly() => print("我會飛！");
}

class Bird with Flyer {}

---

🌟 Dart 中一切皆物件

- 所有型別都是物件，甚至基本資料型別（int、double、String）也都是物件，繼承自 Object 類別。

---

💬 小結

- 類別：定義資料結構與功能
- 物件：類別的具體實例
- 屬性、方法、封裝、繼承、多態、抽象類別、接口、mixin = Dart OOP 的核心工具

---
*/
