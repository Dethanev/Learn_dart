/*
Dart 中的靜態成員（static 成員）：

  1. 使用 static 關鍵字來實現類別級別的變數和方法（不屬於某個物件實例，而屬於類別本身）。

  2. 靜態方法不能訪問非靜態成員，但非靜態方法可以訪問靜態成員。

---

💡 說明：
- 靜態成員可用於儲存全局共享資料，如計數器、工具方法等。
- 靜態成員無法使用 this，因為它不是實例的一部分。

---
*/

class Person {
  static String name = '張三';  // 靜態成員
  static void show() {  // 靜態成員
    print(name);
  }
}

void main() {
  print(Person.name); // 直接叫就好
  Person.show(); // 直接叫就好
}



// class Person {
//   static String name = '張三';
//   int age = 19;

//   static void show() {
//     print(name);
//   }

//   void printInfo() {
//     // 非靜態方法可以訪問 靜態成員 非靜態成員
//     print(name); // 訪問靜態屬性
//     print(age); // 訪問非靜態屬性
//     show(); // 調用靜態方法
//   }

//   static void printUserInfo() {
//     print(name); // 靜態屬性
//     show(); // 靜態方法
//     // print(age);  靜態方法無法訪問非靜態的屬性
//     // printInfo();  靜態方法無法訪問非靜態的方法
//   }
// }

// void main() {
//   // print(Person.name);
//   // Person.show();

//   // Person p = Person();
//   // p.printInfo();

//   Person.printUserInfo();
// }