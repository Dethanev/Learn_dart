/*
部分導入

  如果只需要導入庫的一部分，有兩種模式：

    模式一、只導入需要的部分，使用 show 關鍵字，如下例子所示：

    import 'package:lib1/lib1.dart' show foo;

    模式二、隱藏不需要的部分，使用 hide 關鍵字，如下例子所示：

    import 'package:lib2/lib2.dart' hide foo;
*/

import 'lib/myMath.dart' show getAge; // 部分導入

void main() {
  // getName();
  getAge(); // 只能用這個
  // getSex();
}
