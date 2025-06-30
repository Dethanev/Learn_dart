
# Dart 迴圈與控制流程筆記（含輸出結果）

## 1. 遞增（++）與遞減（--）

```dart
int a = 10;
int b = a++;
print(a); // 11
print(b); // 10

int c = 10;
int d = ++c;
print(c); // 11
print(d); // 11
```
> **輸出結果：**
> 11, 10, 11, 11

---

## 2. for 迴圈基本介紹

```dart
for (int i = 1; i <= 10; i++) {
  print(i);
}
```
> **輸出結果：**
> 1 到 10 每行列印一個

---

## 3. for 迴圈應用：偶數、累加、階乘、列印列表

```dart
for (int i = 0; i <= 50; i++) {
  if (i % 2 == 0) {
    print(i);
  }
}
```
> **輸出結果：**
> 列印 0 ~ 50 的所有偶數

---

## 4. 進階 for 迴圈：二維 List + Map

```dart
List list = [
  {"cate": "國內", "news": [{"title": "國內新聞 1"}, {"title": "國內新聞 2"}]},
  {"cate": "國外", "news": [{"title": "國外新聞 1"}, {"title": "國外新聞 2"}]}
];

for (int i = 0; i < list.length; i++) {
  print(list[i]["cate"]);
  for (int j = 0; j < list[i]["news"].length; j++) {
    print(list[i]["news"][j]["title"]);
  }
  print('');
}
```
> **輸出結果：**
> 國內、國內新聞 1、國內新聞 2、國外、國外新聞 1、國外新聞 2

---

## 5. OOP 與 for 迴圈結合

```dart
class News {
  final String title;
  News(this.title);
}

class Category {
  final String cate;
  final List<News> news;
  Category(this.cate, this.news);
}

List<Category> list = [
  Category("國內", [News("國內新聞 1"), News("國內新聞 2")]),
  Category("國外", [News("國外新聞 1"), News("國外新聞 2")]),
];

for (var category in list) {
  print(category.cate);
  for (var news in category.news) {
    print(news.title);
  }
  print('');
}
```
> **輸出結果：**
> 同上，列印各類別名稱與標題

---

## 6. while 與 do...while 迴圈

```dart
int i = 0;
while (i < 5) {
  print(i);
  i++;
}

int j = 0;
do {
  print(j);
  j++;
} while (j < 5);
```
> **輸出結果：**
> 0~4 各列印一次（兩種寫法都相同）

---

## 7. while 應用：偶數、累加、階乘

```dart
int i = 0;
while (i <= 50) {
  print(i);
  i += 2;
}
```
> **輸出結果：**
> 0 ~ 50 的所有偶數

---

## 8. break 與 continue

```dart
for (int i = 0; i < 5; i++) {
  if (i == 3) break;
  print(i);
}

for (int i = 0; i < 5; i++) {
  if (i == 2) continue;
  print(i);
}
```
> **輸出結果：**
> 第一個 for：0, 1, 2（到 3 就中斷）  
> 第二個 for：0, 1, 3, 4（跳過 2）

---

## 9. break/continue 綜合應用

```dart
for (int i = 1; i < 10; i++) {
  if (i == 4) continue;
  print(i);
}
```
> **輸出結果：**
> 1, 2, 3, 5, 6, 7, 8, 9

```dart
for (int i = 1; i < 10; i++) {
  if (i == 4) break;
  print(i);
}
```
> **輸出結果：**
> 1, 2, 3

```dart
for (int i = 1; i < 5; i++) {
  print("外層 $i");
  for (int j = 1; j < 5; j++) {
    if (j == 3) break;
    print("內層 $j");
  }
}
```
> **輸出結果：**
> 外層循環依序跑，內層遇到 j == 3 就中斷

