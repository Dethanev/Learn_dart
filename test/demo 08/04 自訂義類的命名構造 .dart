class Person {
  String? name;
  int? age;
  Person(this.name, this.age); // 默認構造函式 只能設一個
  Person.now() { // 命名構造函式 能設多個
    print('我是命名構造函式');
  }
  Person.setInfo(String name, int age) {
    this.name = name;
    this.age = age;
  }
  void printInfo() {
    print("${this.name}----${this.age}");
  }
}

void main() {
  // var d = new DateTime.now(); // 實例化DateTime調用它的命名構造函式
  // print(d);  // 2025-06-30 11:10:36.675318

  // Person p1 = new Person("Ethan", 18);  // 默認實例化類的時候調用的是 默認構造函式

  // Person p1 = new Person.now(); // 命名構造函式 不能單獨叫 只能用種方式叫

  Person p1 = new Person.setInfo('Ethan', 19); // 命名構造函式 不能單獨叫 只能用種方式叫
  p1.printInfo();
  // 不能print(p1); 會輸出Instance of 'Person'
}

/* 
✅ 小提醒
- 建構子(命名構造函式)被定義後，預設無參數建構子就消失
- 想保留，記得寫 Person(); 
*/