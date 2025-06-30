
# Dart 基本資料型別筆記（進階加強版）

## 🌟 Dart 的資料型別概述

Dart 是強型別語言，所有變量在編譯期就會確定型別。
核心內建類型：

- Numbers（int, double）
- String
- Boolean（bool）
- List
- Map
- Symbol, Runes（少用，進階場景）

---

## 1️⃣ 字串（String）

### 特性

- 單引號或雙引號皆可
- 支援多行字串，用三個單引號或三個雙引號
- 字串插值：使用 `$` 或 `${}`

```dart
String str1 = 'Hello';
String str2 = "World";
String str3 = '''這是
多行
字串''';
print("$str1 $str2"); // Hello World
```

#### 內部實作

- Dart 的 String 是 UTF-16 編碼
- 可以使用 `codeUnits`, `runes` 存取底層 Unicode

---

## 2️⃣ 數值（Numbers）

- `int`：整數
- `double`：浮點數

```dart
int a = 20;
double b = 30.5;
print(a + b); // 50.5
```

#### 進階

- 所有數值型別都是 `num` 類別的子類
- 可進行 `toString()`, `toInt()`, `toDouble()` 轉換

```dart
num x = 10;
print(x is int); // true
print(x is double); // false
```

---

## 3️⃣ 布林（bool）

```dart
bool flag = true;
print(flag); // true
```

#### 注意

- Dart 僅接受 `true` 或 `false`，不接受隱式轉換（例如 JS 的 if (value)）
- 所有非空物件不會自動判斷為 true

---

## 4️⃣ List（列表 / 陣列）

### 基本

```dart
var list = ["Ethan", 20, true];
print(list);
```

### 指定型別

```dart
List<String> names = ["Ethan", "Chris"];
```

#### 進階

- 支援集合運算子（...、...?）
- 可用 `List.filled`, `List.generate` 快速生成

```dart
var newList = List.generate(3, (index) => 'Item $index');
print(newList); // [Item 0, Item 1, Item 2]
```

---

## 5️⃣ Map（字典）

### 基本

```dart
var person = {"name": "張三", "age": 20};
print(person["name"]); // 張三
```

### 指定型別

```dart
Map<String, dynamic> data = {"title": "Hello", "count": 3};
```

#### 進階

- 使用 `forEach`, `map`, `keys`, `values` 做更多操作
- 可用 `addAll`, `remove` 修改鍵值對

---

## 6️⃣ 類型判斷

使用 `is`, `is!` 判斷型別：

```dart
var str = "Dart";
if (str is String) {
  print("是 String 類型");
}
```

---

## 🧠 進階小提醒

- 使用明確型別可提升程式的安全性與維護性
- Dart 所有型別皆繼承自 `Object`
- 可使用 `dynamic` 接收任意型別，但應謹慎使用，否則會失去型別檢查優勢

---

### 💬 結論

> 「搞懂 Dart 基本型別，是後續學習函式、物件導向、集合與異步的基石！」



---

## 💻 程式碼與輸出結果對照表

| 程式碼範例              | 預期輸出           |
|-----------------------|----------------|
| print("$str1 $str2"); | Hello World    |
| print(a + b);         | 50.5           |
| print(flag);          | true           |
| print(list);          | [Ethan, 20, true] |
| print(newList);       | [Item 0, Item 1, Item 2] |
| print(person["name"]);| 張三           |
| print(x is int);      | true           |


---

## 💻 範例程式與輸出結果

```dart
String str1 = 'Hello';
String str2 = 'World!';
print(str1 + " " + str2);
```
**輸出結果：**
Hello World!

```dart
int a = 20;
double b = 30.5;
print(a + b);
```
**輸出結果：**
50.5

```dart
bool flag = true;
print(flag);
```
**輸出結果：**
true

```dart
var list = ["Ethan", 20, true];
print(list);
```
**輸出結果：**
[Ethan, 20, true]

```dart
var newList = List.generate(3, (index) => 'Item $index');
print(newList);
```
**輸出結果：**
[Item 0, Item 1, Item 2]

```dart
var person = {"name": "張三", "age": 20};
print(person["name"]);
```
**輸出結果：**
張三

```dart
num x = 10;
print(x is int);
```
**輸出結果：**
true


---

## 💻 範例程式（含輸出結果）

```dart
String str1 = 'Hello';
String str2 = 'World!';
print(str1 + " " + str2);
// 輸出結果：Hello World!
```

```dart
int a = 20;
double b = 30.5;
print(a + b);
// 輸出結果：50.5
```

```dart
bool flag = true;
print(flag);
// 輸出結果：true
```

```dart
var list = ["Ethan", 20, true];
print(list);
// 輸出結果：[Ethan, 20, true]
```

```dart
var newList = List.generate(3, (index) => 'Item $index');
print(newList);
// 輸出結果：[Item 0, Item 1, Item 2]
```

```dart
var person = {"name": "張三", "age": 20};
print(person["name"]);
// 輸出結果：張三
```

```dart
num x = 10;
print(x is int);
// 輸出結果：true
```


---

## 💻 範例程式（含輸出結果）

```dart
String str1 = 'Hello';
String str2 = 'World!';
print(str1 + " " + str2);
```

```
Hello World!
```

```dart
int a = 20;
double b = 30.5;
print(a + b);
```

```
50.5
```

```dart
bool flag = true;
print(flag);
```

```
true
```

```dart
var list = ["Ethan", 20, true];
print(list);
```

```
[Ethan, 20, true]
```

```dart
var newList = List.generate(3, (index) => 'Item $index');
print(newList);
```

```
[Item 0, Item 1, Item 2]
```

```dart
var person = {"name": "張三", "age": 20};
print(person["name"]);
```

```
張三
```

```dart
num x = 10;
print(x is int);
```

```
true
```
