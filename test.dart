void main() {
  // int a = 13;
  // int b = 5;

  // print(a + b); //加
  // print(a - b); //減
  // print(a * b); //乘
  // print(a / b); //除
  // print(a % b); //取餘
  // print(a ~/ b); //取整

  // var c = a * b;

  // print("$c");
  // print(c);

  //  == | != | > | < | >= | <= |

  // int a = 5;
  // int b = 3;

  // print(a == b); //判斷是否相等
  // print(a != b); //判斷是否不等
  // print(a > b); //判斷是否大於
  // print(a < b); //判斷是否小於
  // print(a >= b); //判斷是否大於等於
  // print(a <= b); //判斷是否小於等於

  // if (a > b) {
  //   print('a大於b');
  // } else {
  //   print('a小於b');
  // }

  /*  !取反   */

  // bool flag = false;

  // print(flag);
  // print(!flag);

  /* &&並且:全部為true的話值為true 否則值為false */

  // bool a = true;
  // bool b = false;

  // print(a && b); //false

  // bool x = true;
  // bool y = true;

  // print(x && y); //true

  /* ||或者: 全為false的話值為false 否則值為true */

  // bool a = false;
  // bool b = false;

  // print(a || b); //false

  // bool x = true;
  // bool y = false;

  // print(x || y); //true

  // bool c = true;
  // bool d = true;

  // print(c || d); //true

  //如果一個人的年齡是20 並且 sex是女的話我們打印這個人

  // int age = 30;
  // String sex = '女';

  // if (age == 20 || sex == '女') {
  //   print("$age-----$sex");
  // } else {
  //   print("不輸出");
  // }

  // 1. 基礎賦值運算符號  =   ??=

  // int a = 10;
  // int b = 3;

  // print(a);

  // int c = a + b;  //從左到右賦值

  // b??=23; 表示如果b為空的話 把23賦值給b

  // int a = 15;
  // a ??= 23; //他覺得是廢話 所以黃

  // print(a); //15

  // int? b;
  // b ??= 23;

  // print(b); //23

  // 2. 複合賦值運算符號  +=   -=  *=  /=  %=  ~/=

  /* += */
  // int a = 12;

  // a += 10; // a = a + 10;

  // print(a); // 22

  // /* -= */
  // int b = 12;

  // b -= 10; // b = b - 10;

  // print(b); // 2

  // /* *= */

  // int c = 12;

  // c *= 10; // c = c * 10;

  // print(c); //120

  // /* /= */

  // double d = 12; //除會有小數要用 double

  // d /= 10; // d = d / 10;

  // print(d); //1.2

  // /* %= */

  // int e = 12;

  // e %= 10; // e = e % 10;

  // print(e); //2

  // /* ~/= */

  // int f = 12;

  // f ~/= 10; // f = f ~/ 10;

  // print(f); //1

  // 1. if else switch case

  /* if else */

  // bool flag = true;

  // if (flag == true) {
  //   print("true");
  // } else {
  //   print("false");
  // }

  //用 if else 判斷一個人的成績
  //如果大於60顯示 及格 |如果大於70顯示 良好 | 如果大於90顯示 優秀

  // int score = 80;

  // if (score > 90) {
  //   print('優秀');
  // } else if (score > 70) {
  //   print('良好');  //輸出
  // } else if (score > 60) {
  //   print('及格');
  // } else {
  //   print('不及格');
  // }

  /* switch case */

  //用 switch case 判斷一個人的成績
  //如果大於60顯示 及格 |如果大於70顯示 良好 | 如果大於90顯示 優秀

  // int score = 80;

  // switch (score) {
  //   case > 90:
  //     print('優秀');
  //     break;
  //   case > 70:
  //     print('良好'); //輸出
  //     break;
  //   case > 60:
  //     print('及格');
  //     break;
  //   default:  //什麼都沒有就會跑到 default
  //     print('不及格');
  //     break;
  // }

  // 2. 三目運算符

  //方法一
  // bool flag = true;
  // String c;

  // c = flag == true ? '我是true' : '我是false';
  // //c等於 flag如果等於true '我是true' 否則 '我是 false

  // print(c);

  // 方法二
  // bool flag = true;
  // String c;

  // if (flag == true) {
  //   c = "我是true";
  // } else {
  //   c = "我是false";
  // }

  // print(c);

  // 兩個方法都一樣 簡單的條件就會用方法一 比較簡潔

  // 3. ??運算符

  // int? a ;
  // int? b = a ?? 10; // a是空就等於10 b就等於a

  // print(b);

  /* 1. Number 與 String 類型之間的轉換 */

  //Number類型轉換成String  toString()
  //String類型轉換成Number類型  parse()

  // String str = '123';

  // int myNum = int.parse(str);

  // print(myNum is int);

  // String price = '123';

  // double myNum = double.parse(price);

  // print(myNum);
  // print(myNum is double); //黃正常 因為他覺得是廢話

  // 報錯
  // String price = '';

  // double myNum = double.parse(price);

  // print(myNum);
  // print(myNum is double); //黃正常 因為他覺得是廢話

  // try....catch 捕捉與處理錯誤 防止整個程式直接爆掉
  // String price = ' ';

  // try {
  //   double myNum = double.parse(price);

  //   print(myNum);
  //   print(myNum is double); //黃正常 因為他覺得是廢話
  // } catch (err) {
  //   print(0); //
  // }

  int myNum = 123;
  String str = myNum.toString();

  print(str is String);
}
