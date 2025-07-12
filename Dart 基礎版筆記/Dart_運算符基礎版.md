
# Dart 運算符與類型轉換筆記（含輸出結果）

## 1. Dart 運算符與條件判斷

### 算術運算符 + _ * /  %  ~/

```dart
int a = 13;
int b = 5;
print(a + b);加
print(a - b);減
print(a * b);乘
print(a / b);除
print(a % b);取餘
print(a ~/ b); // 取整
```
> **輸出結果：**
> 18, 8, 65, 2.6, 3, 2

---

### 關係運算符  ==  !=  >  <  >=  <=

```dart
int a = 5;
int b = 3;
print(a == b); // a是否等於b
print(a != b); // a是不否等於b
print(a > b);  // a是否大於b
print(a < b);  // a是否小於b
print(a >= b); // a是否大於等於b
print(a <= b); // a是否小於等於b
```
> **輸出結果：**
> false, true, true, false, true, false

---

### 邏輯運算符 !取反

```dart
bool flag = false;

print(flag);  false
print(!flag); true
```
> **輸出結果：**
> false, true

---

### 基礎賦值運算符  =  ??=

```dart
int a = 10;
int b = 3;
int c = a + b; // 從左到右賦值

print(c); // 13

int d = 15;
d ??= 23; // 表示如果d為空的話 把23賦值給d

print(d); //15

```
> **輸出結果：**
> 13,15

---

### 複合賦值運算符  +=   -=  *=  /=  %=  ~/=

```dart
  /* += */
int a = 12;
a += 10; // a = a + 10;
print(a); // 22

  /* -= */
int b = 12;
b -= 10; // b = b - 10;
print(b); // 2

  /* *= */
int c = 12;
c *= 10; // c = c * 10;
print(c); //120

  /* /= */
double d = 12; //除會有小數要用 double
d /= 10; // d = d / 10;
print(d); //1.2

  /* %= */
int e = 12;
e %= 10; // e = e % 10;
print(e); //2
  
  /* ~/= */
int f = 12;
f ~/= 10; // f = f ~/ 10;
print(f); //1
```
> **輸出結果：**
> 22, 2, 120, 1.2, 2, 1

---
## 2. 條件表達式 if else switch case
### if else
```dart
  bool flag = true;

  if (flag == true) {
    // if 如果flag等於真
    print("true");
  } else {
    // else 否則 什麼都沒有就會在這執行
    print("false");
  }
```
> **輸出結果：**
> true

---
### switch case
```dart
用 switch case 判斷一個人的成績
如果大於60顯示 及格 |如果大於70顯示 良好 | 如果大於90顯示 優秀

int score = 80;

switch (score) {
  case > 90:
    print('優秀');
    break; //加break是離開的意思 怕繼續執行到下面的輸出
  case > 70:
    print('良好'); //輸出
    break;
  case > 60:
    print('及格');
    break;
  default:  //什麼都沒有就會跑到 default 執行
    print('不及格');
}
```
> **輸出結果：**
> 良好

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

