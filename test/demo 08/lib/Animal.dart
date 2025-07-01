class Animal {
  String? _name;
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

/*
🧠 Dart 回傳字串超簡單選擇
- 有可能 null → String? getName() { return this._name; }
- 我保證不會 null → String getName() { return this._name!; }
- 想直接給預設 → String getName() { return this._name ?? "預設"; }
*/

/*
🧠 String 回傳方式選擇
- 方法 1 (String?): 安全、嚴謹、強迫檢查 → 長期推
- 方法 3 (??): 方便、省事、UI 常見 → 短期或 UI fallback 可用
*/
