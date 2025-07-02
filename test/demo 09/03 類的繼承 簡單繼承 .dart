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

class Person {
  String name = "張三";
  num age = 20;

  void printInfo() {
    print("${this.name} --- ${this.age}");
  }
}

class Web extends Person {  // 繼承父類Person

}

void main() {

  Web w = Web();

  print(w.name);  // 張三
  w.printInfo();  // 張三 --- 20
}
