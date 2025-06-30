
# Dart 運算符與類型轉換筆記（進階加強版）

## 🌟 運算符完整解析

### 1️⃣ 算術運算符

- `+`、`-`、`*`、`/`、`%`、`~/`（取整除）
- Dart 的 `/` 一定會回傳 `double` 型別，即使整除也不會回傳 int
- `~/` 才會回傳整數（int）

```dart
int a = 13;
int b = 5;
print(a + b); // 18
print(a - b); // 8
print(a * b); // 65
print(a / b); // 2.6
print(a % b); // 3
print(a ~/ b); // 2
```

---

### 2️⃣ 關係運算符

- 用於比較，回傳布林值（true 或 false）

```dart
int a = 5;
int b = 3;
print(a == b); // false
print(a != b); // true
print(a > b);  // true
print(a < b);  // false
print(a >= b); // true
print(a <= b); // false
```

---

### 3️⃣ 邏輯運算符

- `!`：非
- `||`：或
- `&&`：且

```dart
bool flag = false;
print(flag);    // false
print(!flag);   // true
```

---

### 4️⃣ 賦值運算符

```dart
int a = 10;
int b = 3;
int c = a + b;
print(c); // 13
```

其他如 `+=`, `-=`, `*=`, `/=`, `??=` 等也是賦值運算符，用於簡化賦值操作。

---

## 🌟 條件表達式與三元運算

```dart
bool flag = true;
String result = flag ? '我是true' : '我是false';
print(result); // 我是true
```

`??` 運算符可用於當左側為 null 時使用右側值：

```dart
int? a;
int b = a ?? 10;
print(b); // 10
```

---

## 🌟 類型轉換

### String 轉 Number

```dart
String str = '123';
int num = int.parse(str);
print(num); // 123
```

### Number 轉 String

```dart
int num = 123;
String str = num.toString();
print(str); // 123
```

### 空字串轉換錯誤處理

```dart
String price = '';
try {
  double myNum = double.parse(price);
  print(myNum);
} catch (e) {
  print(0);
}
```

---

## 🧠 進階補充

- Dart 所有類型都繼承自 `Object`
- Dart 不會隱式轉換型別，強調型別安全
- 使用 `is`, `as` 進行顯式檢查和轉型

```dart
var str = "Dart";
if (str is String) {
  print("是 String 型別");
}
```

---

### 💬 結論

> 「掌握運算符與類型轉換，能讓你寫出更安全、更靈活、更健壯的 Dart 程式！」


---

## 💻 程式碼與輸出結果對照表

| 程式碼範例    | 預期輸出 |
|-------------|---------|
| print(a + b); | 18 |
| print(a / b); | 2.6 |
| print(a == b); | false |
| print(flag); | false |
| print(!flag); | true |
| print(c); | 13 |
| print(result); | 我是true |
| print(b); | 10 |
| print(num); | 123 |
| print(str); | 123 |
| print(0); | 0 |
| print("是 String 型別"); | 是 String 型別 |


---

## 💻 範例程式與輸出結果

```dart
int a = 13;
int b = 5;
print(a + b);
```
**輸出結果：**
18

```dart
print(a / b);
```
**輸出結果：**
2.6

```dart
print(a == b);
```
**輸出結果：**
false

```dart
bool flag = false;
print(flag);
print(!flag);
```
**輸出結果：**
false
true

```dart
int c = a + b;
print(c);
```
**輸出結果：**
18

```dart
bool f = true;
String result = f ? '我是true' : '我是false';
print(result);
```
**輸出結果：**
我是true

```dart
int? x;
int y = x ?? 10;
print(y);
```
**輸出結果：**
10

```dart
String s = '123';
int n = int.parse(s);
print(n);
```
**輸出結果：**
123

```dart
int num = 123;
String str = num.toString();
print(str);
```
**輸出結果：**
123
