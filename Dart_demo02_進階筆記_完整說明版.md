# Dart demo 02 進階筆記（含輸出結果）

## 1️⃣ 變量與常量介紹

在 Dart 中，可以使用 `var` 進行型別自動推斷，也能明確指定型別（如 `String`, `int`），這樣更有可讀性與安全性。

常量可使用 `final` 或 `const`，其中 `const` 是編譯時常量，`final` 是執行期只能賦值一次，不能再次修改。

```dart
var str = 'this is var';
String str2 = 'this is String';
int num = 123;

final name = '小明';
const bar = 1000000;
const double atm = 1.01325 * bar;
```
> **輸出結果：**  
> 無直接輸出，僅宣告

---

## 2️⃣ 程式入口點與輸出示範

Dart 程式會從 `main()` 函式開始執行，以下示範如何使用 `print()` 進行輸出：

```dart
void main() {
  print("Hello World!");
}
```
> **輸出結果：**  
> Hello World!

---

## 🧾 結語

本章節介紹了 Dart 中的變量、常量以及程式入口點，並展示了基礎輸出方式。這些基礎觀念對後續學習函式、控制流程和物件導向非常重要。