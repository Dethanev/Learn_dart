
# Dart 筆記整理

## 01. 變量與常量介紹

Dart 是一個強型別語言，可以使用 var 自動推斷型別，也可以明確指定型別。

範例：
```dart
var str = '這是 var';
String str = '這是 String';
int num = 123;
```

注意：
- 當使用 var 宣告時，不能再加型別，否則會報錯。
錯誤範例：
```dart
var int a = 5; // 這樣會報錯
```

### 常量

const 表示編譯時常量，值必須在編譯時就確定。
final 表示運行時常量，值只能賦值一次，可以在執行時再給值。

範例：
```dart
final name = '小明';
final String nickname = '阿明';

const bar = 1000000;
const double atm = 1.01325 * bar;
```

### 命名規則

1. 變量名稱只能由字母、數字、底線（_）或美元符號（$）組成
2. 不能以數字開頭
3. 不可使用保留字或關鍵字
4. Dart 區分大小寫，例如 age 和 Age 是不同的
5. 名稱應該具有語意，便於閱讀和理解

合法範例：userName, isActive, count_1, $tempValue

不合法範例：if, class, true

---

## 02. 主函數與輸出

在 Dart 中，main 函數是程式的入口，會從這裡開始執行。

範例：
```dart
void main() {
  print("Hello World!");
}
```

說明：
1. main 是函數，程序會從這裡開始執行
2. void 表示函數沒有返回值
3. print 是用來輸出字串到螢幕
4. Dart 每行語句要用分號結尾

