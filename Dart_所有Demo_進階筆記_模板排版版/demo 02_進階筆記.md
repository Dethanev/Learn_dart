# Dart demo 02 進階筆記（含輸出結果）

## 1. 說明

這裡是針對本 demo 的詳細進階補充，完整示範程式碼與輸出結果。

---


# Dart 資料型別筆記（含輸出結果）

## 1. 數據類型介紹

Dart 支援以下常見資料型別：

- Numbers（數值）: int, double
- Strings（字串）: String
- Booleans（布林）: bool
- List（陣列）: 列表物件
- Map（字典）: 鍵值對集合

還有較少用到的 Runes、Symbols，可先不學。

```dart
main() {
  var clapping = '\u{1f44f}';
  print(clapping);
}
```
> **輸出結果：**  
> 👏

---

## 2. 字串類型

```dart
String str1 = 'Hello';
String str2 = 'World!';
print(str1 + " " + str2);
```
> **輸出結果：**  
> Hello World!

---

## 3. 數值類型

```dart
int a = 20;
double b = 30.0;
print(a + b);
```
> **輸出結果：**  
> 50.0

---

## 4. 布林類型

```dart
bool flag1 = true;
bool flag2 = false;

if (1 > 2) {
  print(flag1);
} else {
  print(flag2);
}
```
> **輸出結果：**  
> false

---

## 5. List (陣列/集合)

```dart
var li = ["Ethan", 20, true];
print(li);
print(li.length);
print(li[0]);
```
> **輸出結果：**  
> [Ethan, 20, true]  
> 3  
> Ethan

```dart
var l1 = <String>["Ethan", "Chris"];
var l2 = <int>[12, 34];
print(l1);
print(l2);
```
> **輸出結果：**  
> [Ethan, Chris]  
> [12, 34]

---

## 6. Map (字典)

```dart
var person = {
  "name": "張三",
  "age": 20,
  "work": ["工程師", "老師"]
};
print(person);
print(person["name"]);
```
> **輸出結果：**  
> {name: 張三, age: 20, work: [工程師, 老師]}  
> 張三

---

## 7. 類型判斷

```dart
var str1 = "1234";
if (str1 is String) {
  print("是 String 類型");
} else if (str1 is int) {
  print("是 int 類型");
} else {
  print("其他類型");
}
```
> **輸出結果：**  
> 是 String 類型
