
# Dart 基礎語法筆記（進階加強版）

## 🌟 Dart 是什麼？

- Dart 是 Google 開發的現代化語言
- 特別適合做 Flutter（跨平台 UI 框架）
- 靜態型別、可選型別，支援 OOP 與函式式編程

---

## 1️⃣ 變量（Variables）

### 概念

- `var`：自動推斷型別
- 指定型別（如 `String`, `int`）更明確、安全
- Dart 編譯期會檢查型別，避免誤用

```dart
var str = '這是 var';
String str2 = '這是 String';
int num = 123;
```

### `var` 與型別不能混用

```dart
var int a = 5; // ❌ 錯誤寫法
```

#### 小技巧

- 生產環境建議多使用明確型別，增強可讀性和維護性

---

## 2️⃣ 常量（Constants）

### `const` vs `final`

| 關鍵字 | 編譯時確定 | 執行時確定 | 可重新賦值 |
|-----------|-----------|-----------|---------|
| `const` | ✅ | ❌ | ❌ |
| `final` | ❌ | ✅ | ❌ |

```dart
final name = '小明';
const bar = 1000000;
const double atm = 1.01325 * bar;
```

### 應用場景

- UI 固定字串 → 用 `const`
- 程式執行後才確定的資料 → 用 `final`

---

## 3️⃣ 命名規則

### 規則

- 只能用字母、數字、_、$
- 不可用數字開頭
- 不可用 Dart 關鍵字
- 區分大小寫

### 範例

✅ `userName`, `isActive`, `count_1`, `$tempValue`  
❌ `if`, `true`, `123abc`

---

## 4️⃣ 關鍵字與保留字

### 關鍵字（常用）

```dart
if, else, for, while, do, switch, case, continue, break, return, true, false, null, var, final, const, dynamic, void, this, super, try, catch, throw, class, extends, implements, new, async, await, yield
```

### 保留字（預留給未來）

```dart
assert, enum, in, import, library, part, show, hide, operator, export 等
```

---

## 5️⃣ 主函式（main 函式）

- Dart 程式從 `main()` 開始執行
- `void` 表示不回傳值
- 每條語句以分號結尾

```dart
void main() {
  print("Hello World!");
}
```

> **輸出結果：**
> Hello World!

---

## 🧠 進階小提醒

- Dart 編譯器有強型別檢查，即使使用 `var`，也會在第一次賦值後推斷出固定型別
- `const` 宣告的物件在記憶體中可重用（canonicalized object），效能更高
- 變量命名要語意清晰，方便團隊協作

---

### 💬 結論

> 「理解 Dart 型別和常量概念是寫安全、穩定程式的第一步，後續結合函式、OOP，能大幅提升程式品質。」

