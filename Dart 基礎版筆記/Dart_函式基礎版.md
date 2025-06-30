
# Dart 函式與閉包筆記（含輸出結果）

## 1. 函式、方法、函數差異

- **函式 (Function)**：獨立使用，不屬於類別
- **方法 (Method)**：定義在類別內部，與物件狀態相關
- **函數**：數學名詞，程式裡較少這樣稱呼

```dart
int add(int a, int b) {
  return a + b;
}

class Person {
  void sayHello() {
    print("Hello!");
  }
}
```

---

## 2. 函式定義與作用域

```dart
void printInfo() {
  print('我是一個自訂義方法');
}

int getNum() {
  return 123;
}

String printUserInfo() {
  return 'Hello World!';
}

List getList() {
  return ['111', '222', '333'];
}

void main() {
  printInfo(); // 我是一個自訂義方法
  print(getNum()); // 123
  print(printUserInfo()); // Hello World!
  print(getList()); // [111, 222, 333]
}
```

---

## 3. 函式參數：基本、可選、默認、命名

```dart
int sumNum(int x) {
  int sum = 0;
  for (int i = 1; i <= x; i++) {
    sum += i;
  }
  return sum;
}

print(sumNum(60)); // 1830
print(sumNum(90)); // 4095

String printUserInfo(String username, int age) {
  return "名字: $username----年齡: $age";
}

print(printUserInfo('Ethan', 18)); // 名字: Ethan----年齡: 18
```

### 命名參數

```dart
String printUserInfo(String username, {String sex = '男', int? age}) {
  if (age != null) {
    return "名字:$username--性別:$sex--年齡:$age";
  }
  return "名字:$username--性別:$sex--年齡:*";
}

print(printUserInfo('Ethan', age: 18, sex: '未知')); // 名字:Ethan--性別:未知--年齡:18
```

---

## 4. 箭頭函式 & 函式調用

```dart
var list = [4, 1, 2, 3, 4];
var newList = list.map((value) => value > 2 ? value * 2 : value).toList();
print(newList); // [8, 1, 2, 6, 8]
```

### 函式互相調用

```dart
bool isEvenNumber(int n) {
  return n % 2 == 0;
}

void printNum(int x) {
  for (int i = 1; i <= x; i++) {
    if (isEvenNumber(i)) {
      print(i);
    }
  }
}

printNum(10); // 2, 4, 6, 8, 10
```

---

## 5. 匿名函式、自執行函式、遞歸

### 匿名函式

```dart
List list = [1, 2, 3];
list.forEach((value) {
  print(value + 10);
});
```

### 自執行函式

```dart
((int n) {
  print(n);
  print('我是自執行函式');
})(12);
```

### 遞歸函式

```dart
int sum = 1;

void fn(int n) {
  sum *= n;
  if (n == 1) {
    return;
  }
  fn(n - 1);
}

fn(5);
print(sum); // 120
```

---

## 6. 閉包

```dart
Function outer() {
  int count = 0;
  return () {
    count++;
    print(count);
  };
}

void main() {
  var counter = outer();
  counter(); // 1
  counter(); // 2
}
```

### 特性

- 閉包會捕捉外部變數，讓它們不會被回收
- 每次呼叫 outer() 會產生新的閉包，獨立記憶
- 適合做私有變數、計數器等用途

