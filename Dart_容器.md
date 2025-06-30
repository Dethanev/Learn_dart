
# Dart 容器與集合操作筆記（含輸出結果）

## 1. 三大容器概念

- **List（陣列）**：有順序、可重複，使用索引取值
- **Set（集合）**：無順序、不可重複，自動去重
- **Map（字典）**：鍵值對，key 唯一，value 可重複

```dart
List<String> names = ['Ethan', 'Tom'];
names.add('Alex');
print(names[0]); // Ethan

Set<String> tags = {'news', 'tech'};
tags.add('news');
print(tags); // {news, tech}

Map<String, int> scores = {'Ethan': 100, 'Tom': 80};
scores['Alex'] = 95;
print(scores['Ethan']); // 100
```

---

## 2. List 常用屬性與方法

```dart
List myList = ['Ethan', 'Chris', 'LY'];
print(myList.length); // 3
print(myList.isEmpty); // false
print(myList.reversed); // (LY, Chris, Ethan)
print(myList.toList()); // [Ethan, Chris, LY]
```

### 操作方法

```dart
myList.add('新資料');
myList.addAll(['更多', '資料']);
myList.indexOf('Chris'); // 找索引
myList.remove('LY');
myList.removeAt(1); // 移除指定位置

myList.fillRange(0, 2, 'aaa');
myList.insert(1, '中間插入');
myList.insertAll(1, ['a', 'b']);
```

### 字串與 List 互轉

```dart
String joined = myList.join('-'); // List -> String
List splitList = joined.split('-'); // String -> List
```

---

## 3. Set：去重集合

```dart
Set s = new Set();
s.add('Ethan');
s.add('Chris');
s.add('Ethan');
print(s); // {Ethan, Chris}

List myList = ['張三', '張三', '李四'];
print(myList.toSet().toList()); // 去重後轉回 List → [張三, 李四]
```

---

## 4. Map：鍵值對資料

```dart
Map<String, dynamic> person = {'name': '張三', 'age': 20};
person['sex'] = '男';
print(person['name']); // 張三
print(person.keys.toList()); // [name, age, sex]
print(person.values.toList()); // [張三, 20, 男]

person.addAll({'height': 180});
person.remove('age');
print(person.containsValue('張三')); // true
```

---

## 5. 集合操作 forEach、map、where、any、every

### forEach：逐項執行副作用（如輸出）

```dart
List fruits = ['香蕉', '蘋果', '芭樂'];
fruits.forEach((item) => print(item));
```

### map：每一項轉換成新值，回傳新 List

```dart
List numbers = [1, 3, 5];
var doubled = numbers.map((n) => n * 2).toList();
print(doubled); // [2, 6, 10]
```

### where：篩選符合條件的項目

```dart
List numbers = [1, 3, 5, 7, 9];
var filtered = numbers.where((n) => n > 5).toList();
print(filtered); // [7, 9]
```

### any：只要有一項符合就回傳 true

```dart
bool result = numbers.any((n) => n > 5);
print(result); // true
```

### every：全部都符合才回傳 true

```dart
bool result = numbers.every((n) => n > 5);
print(result); // false
```

---

## 6. Map 用 forEach 遍歷

```dart
Map<String, dynamic> person = {'name': '張三', 'age': 20};
person.forEach((key, value) {
  print('$key: $value');
});
```

---

## 7. Set 用 forEach

```dart
Set mySet = {1, 2, 3};
mySet.forEach((value) => print(value));
```

