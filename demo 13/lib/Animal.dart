class Animal {
  String? _name; // 私有屬性
  int? age;

  // 預設構造函式（建構子）的簡寫寫法
  Animal(this._name, this.age);

  void printInfo() {
    print("${this._name} ---- ${this.age}");
  }

  String? getName() {
    return this._name;
  }

  void _run() {
    print('這是一個封裝方法');
  }

  void execRun() {
    this._run();  // 類裡面方法互相調用
  }
}
