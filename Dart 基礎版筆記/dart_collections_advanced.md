
#  Dart 三大容器（集合）進階筆記

## 🟢 00 三大容器總覽（快速複習）

Dart 常用容器（集合）：

- **List** 👉 有順序、可重複
- **Set** 👉 無順序、不重複
- **Map** 👉 鍵值對

```dart
List list = [1, 2, 3];
Set set = {1, 2, 3};
Map map = {'name': 'Ethan', 'age': 18};

print(list);
print(set);
print(map);
```

 **輸出結果**
```
[1, 2, 3]
{1, 2, 3}
{name: Ethan, age: 18}
```

---

## 🟢 01 List 進階

### List 裡面的常用屬性 

### length(長度) | isEmpty(是否空) | isNotEmpty(是否不為空)
```dart
List myList = ["Ethan", 'Chris', "Lily"];

print(myList.length);
print(myList.isEmpty);
print(myList.isNotEmpty);
```

 **輸出結果**
```
3
false
true
```

### reversed(翻轉)
```dart
/*
reversed 回傳的是 Iterable，不是 List 所以輸出才不是 中括號
Iterable = 可看、可走訪，但不能直接改裡面的資料 現在初學知道這樣就好
*/
List myList = ["Ethan", 'Chris', "Lily"];

print(myList.reversed); // 對列表進行倒敘排序

List newMyList = myList.toList(); // Iterable 轉回 List 就可以修改

print(newMyList);
```

 **輸出結果**
```
(LY, Chris, Ethan)
[Ethan, Chris, LY]
```

### List 裡面常用的方法

### 增加: add(單個)、addAll(多個)
```dart
var list = ['香蕉','蘋果','芭樂'];

myList.add("釋迦"); // 增加資料 只能增加一個
myList.addAll(["芒果", "草莓"]); // 多個資料拼接到列表裡 所以要用中括號
print(myList);
```

 **輸出結果**
```
['香蕉','蘋果','芭樂','釋迦','芒果','草莓']
```

### indexOf(查找)
```dart
List myList = ["Ethan", 'Chris', "Lily"];

print(myList.indexOf("Lily"));  // 查找數據 輸出 2 因為數組是從 0 1 2 所以是 2
print(myList.indexOf("LY"));  // 查找數據 查找不到回傳-1
print(myList);
```

 **輸出結果**
```
2
-1
```

### 刪除: remove(傳入實際值)、removeAt(傳入索引值)
```dart
List myList = ["Ethan", "Chris", "Lily"];

myList.remove("Lily"); // 傳入實際值 刪除Lily數據
myList.removeAt(1);    // 傳入索引值 刪除 1 數據就是 Chris
print(myList);
```

 **輸出結果**
```
[Ethan]
```

### fillRange(修改)
```dart
List myList = ["Ethan", 'Chris', "Lily"];

myList.fillRange(0, 2, 'aaa'); // 修改多個數據 0是開始 2是結尾 所以改到 0 1而已 改的內容'aaa'
print(myList);
```

 **輸出結果**
```
[aaa,aaa,Lily]
```

### 插入: insert(單個)、insertAll(多個)
```dart
List myList = ["Ethan", 'Chris', "Lily"];

myList.insert(1, 'aaa'); // 插入單個數據 在原本 Chris 的前面 插入'aaa'
myList.insertAll(0, ['aaa','bbb']);  // 插入多個數據 在原本 Ethan 的前面 插入'aaa' 和 'bbb'
print(myList);
```

 **輸出結果**
```
[aaa, bbb, Ethan, aaa, Chris, Lily]
```

### join(字串轉換:List轉換成字串)
```dart
List myList = ["Ethan", 'Chris', "Lily"];
var str = myList.join('-'); //list 轉換成字符串

print(str);
print(str is String); // 是String類型 可以用String 宣告
```

 **輸出結果**
```
Ethan-Chris-Lily
true
```
### split(字串轉換:字串轉換成List)
```dart
String str = "Ethan- Chris- Lily";
var list = str.split('-');

print(list);
print(list is List); // 是List類型 可以用List 宣告
```

 **輸出結果**
```
Ethan-Chris-Lily
true
```

---

## 🟢 02 Set 進階

### 去除重複
```dart
var listWithDup = [1, 2, 2, 3, 3, 3];
var setNoDup = Set.from(listWithDup);
print(setNoDup);
```

 **輸出結果**
```
{1, 2, 3}
```

### 集合運算（聯集）

```dart
var setA = {1, 2, 3, 4};
var setB = {3, 4, 5, 6};

print(setA.union(setB)); // 聯集
```

 **輸出結果**
```
{1, 2, 3, 4, 5, 6}
```

### 集合運算（交集）
```dart
print(setA.intersection(setB)); // 交集
```

 **輸出結果**
```
{3, 4}
```

### 集合運算（差集）
```dart
print(setA.difference(setB)); // 差集（A - B）
```

 **輸出結果**
```
{1, 2}
```

---

## 🟢 03 Map 進階

### 修改

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

### 合併
```dart
person.addAll({'gender': 'male', 'city': 'Taipei'}); // 批量新增
print(person);
```

 **輸出結果**
```
{name: Ethan, age: 19, gender: male, city: Taipei}
```

### 刪除
```dart
person.remove('city'); // 刪除鍵
print(person);
```

 **輸出結果**
```
{name: Ethan, age: 19, gender: male}
```

### 遍歷
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

### 展開運算子（spread operator）
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

### List — forEach(遍歷)

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
