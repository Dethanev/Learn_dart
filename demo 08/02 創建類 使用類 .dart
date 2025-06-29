/*
Dart 是一門使用類和單繼承的面向物件語言 所有的物件都是類的實例 並且所有的類都是Object的子
*/

/*
🧠 類與物件定義

- 類（Class）
  → 藍圖、模板，用來描述屬性（資料）和方法（功能）
  → 不能直接用，只是定義

- 物件（Object）
  → 根據類創造出的實體
  → 會真正占用記憶體
  → 每個物件的屬性值可以不同
  → 可呼叫類裡的方法
*/

class Person {
  String name = '張三'; // 屬性
  int age = 20; // 屬性

  // 方法：印出資訊
  void getInfo() {
    // print("$name----$age"); 可讀性低
    print("${this.name} ---- ${this.age}"); // 要加大括號不然輸出會沒有類型
  }

  // 方法：設定年齡
  void setInfo(int age) {
    this.age = age;
  }
}

void main() {
  // 宣告 p1 是 Person 型別的物件，並建立新實例
  Person p1 = Person();

  // 讀取屬性
  print(p1.name); // 張三
  print(p1.age);  // 20

  // 呼叫方法修改年齡
  p1.setInfo(18);

  // 呼叫方法印出資訊
  p1.getInfo(); // 張三 ---- 18
}