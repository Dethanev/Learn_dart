/*
dart:core 庫中 identical 函數的用法介紹如下。

  用法：
  bool identical(
    Object? a,
    Object? b
  )

  檢查兩個引用是否指向同一個物件。

---

例子：

  var o = new Object();

  var isIdentical = identical(o, new Object()); // false, different objects.
  print(isIdentical);

  isIdentical = identical(o, o); // true, same object
  print(isIdentical);

  isIdentical = identical(const Object(), const Object()); // true, const canonicalization
  print(isIdentical);

  isIdentical = identical([1], [1]); // false
  print(isIdentical);

  isIdentical = identical(const [1],const [2]); // false
  print(isIdentical);

  isIdentical = identical(2, 1 + 1); // true, integers canonicalizes
  print(isIdentical);
*/
void main() {
  var o1 = Object();
  var o2 = Object();

  print(identical(o1, o2)); // false 不共享存儲空間
  print(identical(o1, o1)); // true 共享存儲空間

  var o3 = const Object();
  var o4 = const Object();
  // 03 and 04 共享了儲存空間
  print(identical(o3, o4)); // true 共享存儲空間
  print(identical(o3, o3)); // true 共享存儲空間

  print(identical([2], [2])); // false 不共享存儲空間

  var a = [2];
  var b = [2];
  print(identical(a, b)); // false 不共享存儲空間

  const x = [2];
  const y = [2];
  print(identical(x, y)); // true 共享存儲空間

  const c = [2];
  const d = [3];
  print(identical(c, d)); // false 不共享存儲空間

}
//發現:const關鍵字在多個地方創建相同的物件的時候 內存中只保留一個物件
// 條件: 1.常量 2.值相等