/*
  面向物件程式設計（OOP）的三個基本特性是： 封裝﹑繼承﹑多態

  封裝：
    封裝是物件和類別概念的主要特性，把客觀事物封裝成抽象的類別，
    並且把自己的部分屬性和方法提供給其他類別或外部使用，其他細節隱藏起來。

  繼承：
    OOP 語言的一個主要功能就是「繼承」。
    繼承可以讓子類別使用父類別的功能，並且可以擴充或改寫（override）。

  多態：
    允許不同類型的指標（或引用）指向父類型的物件，
    同一個方法呼叫會有不同的執行結果（根據實際的子類實現）。

---

  Dart 的特點：

  - Dart 所有的基本元素都是物件，所有物件都繼承自 Object 類。

  - Dart 是一門使用類別與繼承的面向物件語言，
    所有物件都是類別的實例，並且所有類別都是 Object 的子類。

  - 一個類別通常由屬性（field）和方法（method）組成。

---

💡 Dart 額外補充：

- Dart 支援單繼承，但可以用 mixin（混入）來實現多重功能擴充，避免多重繼承的問題。
- Dart 也支援抽象類別（abstract class），用來作為其他類別的基礎模板。
- 使用 implements 可以實作多個介面（interface），用於多態設計。

*/
void main(){

/* List 是class類 */

  List list = ['芒果'];  
  list.isEmpty;
  list.add('香蕉');
  list.add('芭樂');
  print(list);

/* Map 是class類*/ 

  Map m = new Map(); 
  m["name"] = ["張三"];
  m.addAll({"age": 20});
  m.isEmpty;
  print(m);

}