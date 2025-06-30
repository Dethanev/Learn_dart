
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
- 執行期才知道的值 → 用 `final`

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

## 4️⃣ Dart 關鍵字表格（8 格寬）

| abstract  | else     | import   | show    | as      | enum    | in      | static |
| assert    | export   | interface| super   | async   | extends | is      | switch |
| await     | external | library  | sync    | break   | factory | mixin   | this   |
| case      | false    | new      | throw   | catch   | final   | null    | true   |
| class     | finally  | on       | try     | const   | for     | operator| typedef |
| continue  | Function | part     | var     | covariant | get   | required| void   |
| default   | hide     | rethrow  | while   | deferred | if    | return  | with   |
| do        | implements| set     | yield   |         |      |         |      |

---

## 5️⃣ Dart 保留字表格

| assert | enum | in | import | library | part | show | hide | operator | export |
---

## 🧠 小提醒

- Dart 所有型別皆繼承自 `Object`
- 不允許使用這些關鍵字與保留字當作變量或函式名稱

---

### 💬 結論

> 「8 格寬版表格，視覺更爽，一眼記熟 Dart 關鍵字！」
