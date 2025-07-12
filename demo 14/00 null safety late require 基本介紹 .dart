/*
⭐ Dart 中 ?、late、required 筆記 ⭐

---

✅ ?（可空型別）

- 表示「這個變數可以是 null」。
- 使用時需要先做 null 判斷，否則會編譯錯誤。

例：
String? name;
name = "Ethan";
if (name != null) {
  print(name.length);
}

---

✅ late（延遲初始化）

- 表示「稍後一定會給值，先不要檢查初始化」。
- 適合一開始無法立刻給值，但保證後面會設定。
- 如果最後還是沒賦值就使用，會執行時錯誤（runtime error）。

例：
late String name;
name = "Ethan";
print(name);

---

✅ required（必填命名參數）

- 用在函數或建構子的命名參數。
- 呼叫時必須要給值，不能省略。

例：
void greet({required String name}) {
  print("Hello $name");
}

greet(name: "Ethan"); // 必須要寫 name

---

⭐ 小結

- ? → 可以不給值，表示可為 null。
- late → 稍後會給值，最終一定要有值。
- required → 呼叫時一定要給值（主要用在命名參數）。

---
*/
