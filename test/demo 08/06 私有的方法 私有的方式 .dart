/*
Dart 和其他面向物件語言不一樣，Dart 中沒有 public、private、protected 這些訪問修飾符關鍵字。

但是我們可以使用「下劃線 _」把一個屬性或方法定義成私有（private）。

---

💡 Dart 中的封裝概念補充：

- 如果名稱以「_」開頭，代表該屬性或方法只能在同一個 library（檔案）中訪問，外部無法直接存取。
- 沒有關鍵字寫 public，代表預設是公開的。

*/

import 'lib/Animal.dart';

void main() {
  Animal dog = Animal("Lucky", 3);
  // print(dog.name);不能這樣直接叫 因為name被封裝了
  print(dog.getName());

  dog.execRun();  // 間接的調用私有方法
}
