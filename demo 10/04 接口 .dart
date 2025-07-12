/*
和 Java 一樣，Dart 也有接口，但是和 Java 還是有區別的。

  首先，Dart 的接口沒有 interface 關鍵字專門定義接口，而是普通類或抽象類都可以作為接口被實現。

  同樣使用 implements 關鍵字進行實現。

  但是 Dart 的接口有點奇怪，如果實現的類是普通類，會將普通類和抽象類中的屬性和方法全部需要覆寫一遍。

  而因為抽象類可以定義抽象方法，普通類不可以，所以一般如果要實現像 Java 接口那樣的方式，一般會使用抽象類。

  建議使用抽象類定義接口。
*/

/* 
定義一個DB庫 支持 mysql mssql mongodb 
mysql mssql mongodb 三個類裡面都有同樣的方法
*/

import 'lib/Mysql .dart';
import 'lib/Mssql .dart';

void main() {
  Mysql mysql = Mysql('xxxxxx');
  mysql.add('123123123');

  Mssql mssql = Mssql();
  mssql.uri = '127.0.0.1';
  mssql.add("增加的數據");
}

/*
🧠 Dart extends / abstract / implements 總結
- extends: 單繼承，會拿到邏輯
- abstract: 規範，不能 new，可混合邏輯
- implements: 接口，必須自己實作，不繼承邏輯，可多個
*/