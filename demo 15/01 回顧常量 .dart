/*
Dart 常量：final 和 const 修飾符

const 聲明的常量是在編譯時確定的，永遠不會改變。

final 聲明的常量允許聲明後再賦值，賦值後不可改變，final 聲明的變量是在運行時確定的。

final 不僅有 const 的編譯時常量的特性，最重要的是它是運行時常量，並且 final 是隨興初始化，即使運行時第一次使用前才初始化。
*/


void main() {
/* const 常量 */
  const PI = 3.14;
  // PI = 3.1415926; 不行
  print(PI);

/* final 常量 */
  final Pi = 3.14;
  // PI = 3.1415926; 不行
  print(Pi);

/* final 和 const 區別: final 可以開始不賦值 只能賦一次 ，而final 不僅有const的編譯時常 */

  final a;
  a = 13; // 只能賦值一次
  //a=14; 不能賦值第二次
  print(a);

  final d = DateTime.now(); // 2025-07-04 19:36:27.987462
  print(d);
}
