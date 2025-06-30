
# Dart 運算符與類型轉換筆記（含輸出結果）

## 1. Dart 運算符與條件判斷

### 算術運算符

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
> **輸出結果：**
> 18, 8, 65, 2.6, 3, 2

---

### 關係運算符

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
> **輸出結果：**
> false, true, true, false, true, false

---

### 邏輯運算符

```dart
bool flag = false;
print(flag);    // false
print(!flag);   // true
```
> **輸出結果：**
> false, true

---

### 賦值運算符

```dart
int a = 10;
int b = 3;
int c = a + b;
print(c); // 13
```
> **輸出結果：**
> 13

---

## 2. 條件表達式

```dart
bool flag = true;
if (flag == true) {
  print("true");
} else {
  print("false");
}

int score = 80;
if (score > 90) {
  print('優秀');
} else if (score > 70) {
  print('良好');
} else if (score > 60) {
  print('及格');
} else {
  print('不及格');
}
```
> **輸出結果：**
> true, 良好

---

## 3. 三目運算符（簡單條件判斷）

```dart
bool flag = true;
String result = flag == true ? '我是true' : '我是false';
print(result);
```
> **輸出結果：**
> 我是true

---

## 4. ?? 運算符（空值判斷）

```dart
int? a;
int b = a ?? 10;
print(b);
```
> **輸出結果：**
> 10

---

## 5. 類型轉換

### String 轉 Number

```dart
String str = '123';
int myNum = int.parse(str);
print(myNum);
```
> **輸出結果：**
> 123

### Number 轉 String

```dart
int myNum = 123;
String str = myNum.toString();
print(str);
```
> **輸出結果：**
> 123

### 空字串轉換時報錯（可用 try-catch）

```dart
String price = '';
try {
  double myNum = double.parse(price);
  print(myNum);
} catch (err) {
  print(0);
}
```
> **輸出結果：**
> 0

---

### isEmpty 檢查字串是否為空

```dart
String name = "Ethan";
if (name.isEmpty) {
  print("沒名字");
} else {
  print("有名字");
}
```
> **輸出結果：**
> 有名字

