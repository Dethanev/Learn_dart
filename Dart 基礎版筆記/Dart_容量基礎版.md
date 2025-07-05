
#  Dart 三大容器（集合）基礎筆記

## 🟢 三大容器總覽

Dart 有三種常用容器（集合）：

- **List**:  有順序、可重複，類似陣列。
- **Set** :  無順序、不重複，用來去重。
- **Map** :  鍵值對，類似字典（dict）。

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

## 🟢 List（列表）

- 有順序，可重複。
- 用索引（index）存取，從 0 開始。

```dart
var list = [1, 2, 3, 4, 5];

print(list);
print(list[0]); // 取第一個元素
list.add(6);   // 加到最後
print(list);
```

 **輸出結果**
```
[1, 2, 3, 4, 5]
1
[1, 2, 3, 4, 5, 6]
```

```dart
list.insert(0, 0); // 在 index 0 插入 0
print(list);
```

 **輸出結果**
```
[0, 1, 2, 3, 4, 5, 6]
```

```dart
list.remove(3); // 移除第一個值為 3 的元素
print(list);
```

 **輸出結果**
```
[0, 1, 2, 4, 5, 6]
```

---

## 🟢 Set（集合）

- 不重複，無順序。
- 適合去重、集合運算。

```dart
var set1 = {1, 2, 3, 4, 5};

print(set1);
set1.add(6);
print(set1);
set1.remove(2);
print(set1);
```

 **輸出結果**
```
{1, 2, 3, 4, 5}
{1, 2, 3, 4, 5, 6}
{1, 3, 4, 5, 6}
```

---

## 🟢 Map（映射）

- 用「鍵（key）」存取「值（value）」。
- 適合描述物件屬性。

```dart
var person = {
  'name': 'Ethan',
  'age': 18
};

print(person);
print(person['name']); // 取值
```

 **輸出結果**
```
{name: Ethan, age: 18}
Ethan
```

```dart
person['gender'] = 'male'; // 新增或修改
print(person);
```

 **輸出結果**
```
{name: Ethan, age: 18, gender: male}
```

```dart
person.remove('age'); // 刪除鍵
print(person);
```

 **輸出結果**
```
{name: Ethan, gender: male}
```

---

## 💬 小總結

| 類型 | 是否有順序 | 是否可重複 | 用途                  |
|---------|-------------|-------------|---------------------|
| List    | ✅ 有順序   | ✅ 可重複 | 存多筆有順序資料 |
| Set     | ❌ 無順序 | ❌ 不重複 | 做去重、集合操作 |
| Map     | ✅ 鍵找值 | ✅ 值可重複 | 存鍵值對資料     |

---

##  下一步（進階）

後續可以學：

- `forEach`, `map`, `where`, `any`, `every` 等遍歷 & 過濾方法
- 集合之間的交集、聯集
- List 與 Set 轉換
- Map 遍歷 & 轉換

---

### 💬 最後提醒

> 🎯 建議先把這些基本操作寫到「盲打會」，再慢慢補進階操作，不用急！
