/*
常量構造函數總結如下幾點：

1. 常量構造函數需以 const 關鍵字修飾
2. const 構造函數必須用於成員變量都是 final 的類
3. 如果對類不加 const 修飾，即使調用的是常量構造函數，實例化的對象也不是常量實例
4. 實例化常量構造函數的時候，多個地方創建這個對象，如果傳入的值相同，則會保留同一個實例
5. Flutter 中 const 修飾不僅僅是節省組件構建的內存開銷，Flutter 在需要重新構建組件時是不應該改變的 重新構建沒有任何意義 因此Flutter 不會重建構造 const組件

---
範例
*/

class Container {
  final int width;
  final int height;

  const Container({required this.width, required this.height});
}

void main() {
  var c1 = Container(width: 100, height: 100);
  var c2 = Container(width: 100, height: 100);

  print(identical(c1, c2)); // false 不共享存儲空間

  var c3 = const Container(width: 100, height: 100);
  var c4 = const Container(width: 100, height: 100);

  print(identical(c3, c4)); // true 共享存儲空間

  var c5 = const Container(width: 100, height: 110);
  var c6 = const Container(width: 120, height: 100);

  print(identical(c5, c6)); // false 不共享存儲空間
}
// 實例化常量構造函數的時候 多個地方創建這個物件 如果傳入的值相同 只會保留一個物件