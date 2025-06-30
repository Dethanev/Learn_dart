
# Dart 容器與集合操作筆記（進階加強版）

## 💡 Dart 的三大集合型別

### 1️⃣ List（列表 / 陣列）

- 有順序、可重複
- 本質上是 index-based collection，從 0 開始編號
- 內部實作類似動態陣列（動態擴充機制）

#### 範例

```dart
List<String> names = ['Ethan', 'Tom'];
names.add('Alex');
print(names[0]); // Ethan
```

#### 常用方法（底層概念）

- `add()` / `addAll()`：在動態陣列末尾追加元素（時間複雜度 amortized O(1)）
- `remove()`：找到第一個匹配元素並移除，會導致後面元素位移（O(n)）
- `insert()`：在指定 index 插入，後面元素需搬移（O(n)）

#### 使用場景

- 需要保證順序
- 會有重複元素（如隊列、記錄歷史紀錄）

---

### 2️⃣ Set（集合）

- 無順序、元素唯一
- 本質是基於 HashSet，插入、查找、刪除時間複雜度平均 O(1)

#### 範例

```dart
Set<String> tags = {'news', 'tech'};
tags.add('news');
print(tags); // {news, tech}
```

#### 特性

- 自動去重，無法用索引存取
- 適合快速判斷「是否存在」

#### 使用場景

- 快速查重（如推薦系統、標籤系統）
- 不需要保持順序的場景

---

### 3️⃣ Map（映射 / 字典）

- Key-Value 結構
- Key 唯一、Value 可重複
- 底層是基於 HashMap（也支援 LinkedHashMap 可保順序）

#### 範例

```dart
Map<String, int> scores = {'Ethan': 100, 'Tom': 80};
scores['Alex'] = 95;
print(scores['Ethan']); // 100
```

#### 特性

- keys / values 都可轉為 List
- 遍歷時可使用 `forEach`、`keys`、`values`

#### 使用場景

- 快速關聯資料（如會員 ID 與資料、設定檔 key）
- 快速查詢值

---

## 🔥 進階集合操作

### forEach

- 用於遍歷集合，對每個元素執行指定操作（副作用）
- 注意：不會回傳新集合

```dart
List fruits = ['香蕉', '蘋果', '芭樂'];
fruits.forEach((item) => print(item));
```

### map

- 用於生成新集合（transformation）
- 回傳 Iterable，需要使用 `toList()` 轉換

```dart
List numbers = [1, 3, 5];
var doubled = numbers.map((n) => n * 2).toList();
print(doubled); // [2, 6, 10]
```

### where

- 篩選符合條件的元素，回傳 Iterable

```dart
List numbers = [1, 3, 5, 7, 9];
var filtered = numbers.where((n) => n > 5).toList();
print(filtered); // [7, 9]
```

### any & every

- `any`: 只要有一個符合就回傳 true
- `every`: 所有元素都符合才回傳 true

```dart
bool hasLarge = numbers.any((n) => n > 5);
bool allLarge = numbers.every((n) => n > 5);
print(hasLarge); // true
print(allLarge); // false
```

---

## 🧠 常見問題與最佳實踐

### List 操作後是否會改變原 List？

- `map`, `where` 不會更改原 List，會生成新 Iterable
- 直接對 List 使用 `add`, `remove` 會改變自身

### Set 如何保持插入順序？

- Dart 預設是 HashSet，不保證順序
- 如果要保證順序，可使用 `LinkedHashSet`

### Map 的遍歷是否保證順序？

- HashMap 不保證插入順序
- 若要保證，使用 `LinkedHashMap`

```dart
import 'dart:collection';

var orderedMap = LinkedHashMap();
orderedMap['first'] = 1;
orderedMap['second'] = 2;
print(orderedMap); // 順序: first, second
```

---

## ✅ 總結

| 類型 | 是否有順序 | 是否允許重複 | 特點         |
|---------|-----------|-------------|------------|
| List    | ✅        | ✅         | 索引訪問、動態陣列 |
| Set     | ❌        | ❌         | 快速去重、查存在 |
| Map     | key 保唯一 | value 可重複 | 關聯結構     |

---

### 💬 「集合」是資料結構核心基礎，搞懂這三種型別後，能快速寫出更安全、易維護的 Dart 程式！



---

## 💻 程式碼與輸出結果對照表

| 程式碼範例                     | 預期輸出             |
|----------------------------|----------------|
| print(names[0]);           | Ethan         |
| print(tags);               | {news, tech} |
| print(scores["Ethan"]);    | 100          |
| print(fruits);             | 列出所有水果 |
| print(doubled);            | [2, 6, 10]   |
| print(filtered);           | [7, 9]       |
| print(hasLarge);          | true         |
| print(allLarge);          | false        |


---

## 💻 範例程式與輸出結果

```dart
var names = ["Ethan", "Chris"];
print(names[0]);
```
**輸出結果：**
Ethan

```dart
var tags = {"news", "tech"};
print(tags);
```
**輸出結果：**
{news, tech}

```dart
var scores = {"Ethan": 100, "Chris": 90};
print(scores["Ethan"]);
```
**輸出結果：**
100

```dart
var fruits = ["apple", "banana", "orange"];
print(fruits);
```
**輸出結果：**
[apple, banana, orange]

```dart
var numbers = [1, 3, 5];
var doubled = numbers.map((e) => e * 2).toList();
print(doubled);
```
**輸出結果：**
[2, 6, 10]

```dart
var filtered = [3, 7, 9].where((e) => e > 5).toList();
print(filtered);
```
**輸出結果：**
[7, 9]


---

## 💻 範例程式（含輸出結果）

```dart
var names = ["Ethan", "Chris"];
print(names[0]);
// 輸出結果：Ethan
```

```dart
var tags = {"news", "tech"};
print(tags);
// 輸出結果：{news, tech}
```

```dart
var scores = {"Ethan": 100, "Chris": 90};
print(scores["Ethan"]);
// 輸出結果：100
```

```dart
var fruits = ["apple", "banana", "orange"];
print(fruits);
// 輸出結果：[apple, banana, orange]
```

```dart
var numbers = [1, 3, 5];
var doubled = numbers.map((e) => e * 2).toList();
print(doubled);
// 輸出結果：[2, 6, 10]
```

```dart
var filtered = [3, 7, 9].where((e) => e > 5).toList();
print(filtered);
// 輸出結果：[7, 9]
```


---

## 💻 範例程式（含輸出結果）

```dart
var names = ["Ethan", "Chris"];
print(names[0]);
```

```
Ethan
```

```dart
var tags = {"news", "tech"};
print(tags);
```

```
{news, tech}
```

```dart
var scores = {"Ethan": 100, "Chris": 90};
print(scores["Ethan"]);
```

```
100
```

```dart
var fruits = ["apple", "banana", "orange"];
print(fruits);
```

```
[apple, banana, orange]
```

```dart
var numbers = [1, 3, 5];
var doubled = numbers.map((e) => e * 2).toList();
print(doubled);
```

```
[2, 6, 10]
```

```dart
var filtered = [3, 7, 9].where((e) => e > 5).toList();
print(filtered);
```

```
[7, 9]
```
