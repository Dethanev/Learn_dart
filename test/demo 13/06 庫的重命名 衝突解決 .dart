/*
1、衝突解決

當引入兩個庫中有相同名稱標識符的時候，如果是 Java 通常我們通過寫上完整的包名路徑來指定使用。

Dart 用法：
import 'package:lib1/lib1.dart';
import 'package:lib2/lib2.dart' as lib2;

Element element1 = new Element();          // Uses Element from lib1.
lib2.Element element2 = new lib2.Element(); // Uses Element from lib2.
*/

import 'lib/Person1.dart';
import 'lib/Person2.dart' as lib; // 要加as lib

void main() {
  Person p1 = Person('張三', 20);
  p1.printInfo();

  lib.Person p2 = lib.Person('Ethan', 19);  // 重命名的要加lib
  p2.printInfo();
}
