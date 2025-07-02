/*
面向物件的三大特性：封裝、繼承、多態

---

Dart 中類別的繼承：

  1️. 子類使用 extends 關鍵字來繼承父類。

  2️. 子類會繼承 父類裡面可見的屬性和方法，但不會繼承建構子。

  3️. 子類能夠覆寫父類的方法（也可以覆寫 getter 和 setter）。

---

💡 Dart 額外補充

- 如果要在子類中調用父類的構造邏輯，可使用 super。
- 子類可以選擇不寫 constructor，此時會自動呼叫父類的無參建構子（若存在）。
- 覆寫方法時要加 @override 標註，讓編譯器幫忙檢查。

---
*/

/*
🧠 Dart super 用法小抄
- super(...) → 傳參數給父類建構子
- super.method() → 呼叫父類方法
- super.property → 訪問父類屬性（若有重名）
- 覆寫時，若需要先跑父類方法再加邏輯，可先 super.work()
*/

class Person {
  String? name;
  num? age;

  Person(this.name, this.age);

  void printInfo() {
    print('${this.name}-----${this.age}');
  }

  void work() {
    print('${this.name}在工作...');
  }
}

class Web extends Person {

  Web(String name, num age) : super(name, age);

  run() {
    super.work(); // 子類調用父類的方法
  }
  // 覆寫父類的方法
  @override // 建議覆寫的前面加上@override
  void printInfo() {
    print('姓名:${this.name}-----年齡:${this.age}');
  }
  // 覆寫父類的方法
  @override // 建議覆寫的前面加上@override
  void work() {
    print('${this.name}在台積電工作');
  }
}

void main() {
  Web w = Web('Ethan', 19);

  w.printInfo();  // 姓名:Ethan-----年齡:19

  w.work(); // Ethan在台積電工作

  w.run();  // Ethan在工作...
}

