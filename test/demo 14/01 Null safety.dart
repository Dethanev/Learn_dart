/*
  Null safety 翻譯成中文的意思是空安全。

  null safety 可以幫助開發者避免一些日常開發中很難被發現的錯誤，並且額外的好處是可以改善性能。

  主要是因為變數在一開始沒有設初始值時，可能會出現 null 錯誤，
  所以使用空安全可以讓程式在編譯階段就檢查到，會更安全。

  Flutter 2.0（2021年5月19日發布）之後的版本都要求使用 null safety。

  - ? 可空類型
  - ! 類型斷言（保證不會是 null）
*/

/* 
! 是「類型斷言」，告訴 Dart 這一定不是 null；
真正「判斷是否為 null」要用 if (xxx != null) 或 ?? 等。
*/



String? getData(apiUrl) {
  if (apiUrl != null) {
    return 'this is server data';
  }
  return null;
}

void printLength(String? str) {
  print(str!.length);
}

void main() {
/* ?可空類型 */
  /* int  */

    // int a = 123;
    // print(a);

    // int x = 123; // 非空的int類型
    // x = null; // 所以不能用空類型

    int? a = 123; // int? 表示是一個可空類型
    a = null; // 給a賦空
    print(a); // null

  /* String */

    // String username = "張三";
    // print(username);

    // String username = '張三'; // 非空String類型
    // username = null; // 所以不能用空類型

    String? username = '張三'; // String? 表示username是一個可空類型
    username = null; // 給username賦空
    print(username); // null  

  /* List */

    // List<String> li = ['張三', '李四', '老五'];
    // print(li);

    // List<String> li = ['張三', '李四', '老五']; // 非空List類型
    // li = null; // 所以不能用空類型

    List<String>? li = ['張三', '李四', '老五']; // List? 表示li是一個可空類型
    li = null; // 給li賦空
    print(li); // null

  /* 調用方法 */
    print(getData("http://www.itying.com")); // this is server data
    print(getData(null)); // null

/* ! 類型斷言 */

  // String? str = "this is str";
  // str = null;
  // print(str!.length); // 類型斷言: 如果str不等於null 會打印str的長度 , 如果等於null會出現異常

  printLength('http'); // 4
  printLength(null); // 報錯 因為自己的函式已經規定一定不是空類型
}
