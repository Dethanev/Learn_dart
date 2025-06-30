
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

## 4️⃣ Dart 關鍵字表格（寬版排列）

| 關鍵字    | 中文補充      | 關鍵字    | 中文補充    | 關鍵字    | 中文補充    | 關鍵字    | 中文補充    |
|-----------|-----------|-----------|--------|-----------|--------|-----------|--------|
| abstract  | 抽象類別定義 | else    | 否則   | import  | 匯入檔案 | show   | 匯入顯示限定 |
| as        | 型別轉換    | enum    | 列舉   | in     | 在…中 | static | 靜態方法 |
| assert    | 斷言檢查    | export | 匯出檔案 | interface | 介面 | super  | 父類引用 |
| async     | 非同步標記 | extends | 繼承   | is     | 型別判斷 | switch | 多分支選擇 |
| await     | 等待非同步 | external | 外部函式 | library | 庫定義 | sync   | 同步標記 |
| break     | 跳出迴圈    | factory | 工廠構造 | mixin  | 混入 | this   | 當前物件 |
| case      | 分支選項    | false  | 布林假 | new    | 新建物件 | throw  | 丟出錯誤 |
| catch     | 捕捉錯誤    | final  | 執行時常量 | null   | 空值 | true   | 布林真 |
| class     | 類別定義    | finally | 最終執行 | on     | 錯誤處理 | try    | 嘗試塊 |
| const     | 編譯時常量 | for    | 迴圈   | operator | 運算子重載 | typedef | 型別定義 |
| continue  | 繼續下一次 | Function | 函式型別 | part   | 分部檔案 | var    | 自動型別 |
| covariant | 協變修飾符 | get    | getter屬性 | required | 必填參數 | void   | 無返回值 |
| default   | 預設值      | hide   | 匯入排除 | rethrow | 重拋錯誤 | while | 當…時執行 |
| deferred  | 延遲載入    | if     | 如果   | return | 返回值 | with   | 混入 |
| do        | 先執行判斷 | implements | 實作介面 | set    | setter屬性 | yield  | 產出值 |

---

## 5️⃣ Dart 保留字表格

| 保留字  | 中文補充    |
|-----------|-----------|
| assert    | 斷言       |
| enum      | 列舉       |
| in        | 在…中     |
| import    | 匯入檔案 |
| library   | 庫定義   |
| part      | 分部檔案 |
| show      | 匯入顯示限定 |
| hide      | 匯入排除 |
| operator  | 運算子重載 |
| export    | 匯出檔案 |

---

## 🧠 小提醒

- Dart 所有型別皆繼承自 `Object`
- 不允許使用這些關鍵字與保留字當作變量或函式名稱

---

### 💬 結論

> 「寬表格多列版，視覺更整齊，背誦更快，Dart 基礎語法一次吸收！」
