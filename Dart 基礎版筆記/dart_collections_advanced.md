
#  Dart 三大容器（集合）進階筆記

## 🟢 00 三大容器總覽（快速複習）

Dart 常用容器（集合）：

- **List** 👉 有順序、可重複
- **Set** 👉 無順序、不重複
- **Map** 👉 鍵值對

```dart
List list1 = [1, 2, 3];
Set set1 = {1, 2, 3};
Map map1 = {'name': 'Ethan', 'age': 18};

print(list1);
print(set1);
print(map1);
```

 **輸出結果**
```
[1, 2, 3]
{1, 2, 3}
{name: Ethan, age: 18}
```

---

## 🟢 01 List 進階

### 插入、刪除、排序、查找

```dart
var list = [5, 2, 8, 1];

list.add(10);
print(list);
```

 **輸出結果**
```
[5, 2, 8, 1, 10]
```

```dart
list.insert(2, 99); // 在 index 2 插入 99
print(list);
```

 **輸出結果**
```
[5, 2, 99, 8, 1, 10]
```

```dart
list.removeAt(3); // 移除 index 3 的元素
print(list);
```

 **輸出結果**
```
[5, 2, 99, 1, 10]
```

```dart
list.sort(); // 升序排序
print(list);
```

 **輸出結果**
```
[1, 2, 5, 10, 99]
```

```dart
bool hasFive = list.contains(5);
print(hasFive);
```

 **輸出結果**
```
true
```

---

## 🟢 02 Set 進階

### 去重、集合運算（交集、聯集、差集）

```dart
var setA = {1, 2, 3, 4};
var setB = {3, 4, 5, 6};

print(setA.union(setB)); // 聯集
```

 **輸出結果**
```
{1, 2, 3, 4, 5, 6}
```

```dart
print(setA.intersection(setB)); // 交集
```

 **輸出結果**
```
{3, 4}
```

```dart
print(setA.difference(setB)); // 差集（A - B）
```

 **輸出結果**
```
{1, 2}
```

```dart
var listWithDup = [1, 2, 2, 3, 3, 3];
var setNoDup = Set.from(listWithDup);
print(setNoDup);
```

 **輸出結果**
```
{1, 2, 3}
```

---

## 🟢 03 Map 進階

### 修改、遍歷、合併

```dart
var person = {
  'name': 'Ethan',
  'age': 18
};

person['age'] = 19; // 修改值
print(person);
```

 **輸出結果**
```
{name: Ethan, age: 19}
```

```dart
person.addAll({'gender': 'male', 'city': 'Taipei'}); // 批量新增
print(person);
```

 **輸出結果**
```
{name: Ethan, age: 19, gender: male, city: Taipei}
```

```dart
person.remove('city'); // 刪除鍵
print(person);
```

 **輸出結果**
```
{name: Ethan, age: 19, gender: male}
```

```dart
person.forEach((key, value) {
  print('$key: $value');
});
```

 **輸出結果**
```
name: Ethan
age: 19
gender: male
```

```dart
var map1 = {'a': 1, 'b': 2};
var map2 = {'b': 3, 'c': 4};

var mergedMap = {...map1, ...map2}; // 後面會覆蓋前面
print(mergedMap);
```

 **輸出結果**
```
{a: 1, b: 3, c: 4}
```

---

## 🟢 04 List / Set / Map 常用方法（forEach、map、where、any、every）

### List — forEach

```dart
var myNum = [1, 2, 3, 4];

myNum.forEach((n) {
  print(n * 2);
});
```

✅ **輸出結果**
```
2
4
6
8
```

---

### List — map（轉換）

```dart
var squares = myNum.map((n) => n * n).toList();
print(squares);
```

 **輸出結果**
```
[1, 4, 9, 16]
```

---

### List — where（條件過濾）

```dart
var even = myNum.where((n) => n % 2 == 0).toList();
print(even);
```

 **輸出結果**
```
[2, 4]
```

---

### List — any & every

```dart
bool hasEven = myNum.any((n) => n % 2 == 0);
print(hasEven);
```

 **輸出結果**
```
true
```

```dart
bool allPositive = myNum.every((n) => n > 0);
print(allPositive);
```

 **輸出結果**
```
true
```

---

### Map — entries & keys & values

```dart
var map = {'a': 10, 'b': 20, 'c': 30};

for (var entry in map.entries) {
  print('${entry.key}: ${entry.value}');
}
```

 **輸出結果**
```
a: 10
b: 20
c: 30
```

```dart
print(map.keys);
print(map.values);
```

 **輸出結果**
```
(a, b, c)
(10, 20, 30)
```

---

## 💬 進階總結

| 方法      | 適用集合 | 說明                      |
|-------------|----------|-------------------------|
| `forEach` | List, Set, Map | 逐一遍歷每個元素 |
| `map`     | List, Set    | 轉換每個元素，會生成新集合 |
| `where`   | List, Set    | 根據條件篩選出新集合 |
| `any`     | List, Set    | 是否有任一元素符合條件 |
| `every`   | List, Set    | 是否所有元素都符合條件 |

---

## ✅ 總整理

- 建議先把 List/Set/Map 基礎盲打熟練，再練遍歷與過濾邏輯。
- Dart 集合的函式式操作（map、where 等）跟 JavaScript 很像，對 Flutter 開發很有幫助。
