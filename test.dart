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

  // int myNum = 123;
  // String str = myNum.toString();

  // print(str is String);

// isEmpty:判斷字符串是否為空
  // String name = "Ethan";

  // if (name.isEmpty) {
  //   //如果name為空就執行
  //   print("沒名字");
  // } else {
  //   //如果name不為空就執行
  //   print("有名字");
  // }

  // int? myNum ;

  // if (myNum == null) {
  //   print("沒有值");
  // } else {
  //   print("有值");
  // }

  // double myNum = 0 / 0;

  // print(myNum); //NaN

  // int a = 10;
  // int b = a++;//這行等於 先給值在加
  // //int b = a;
  // //a = a + 1;

  // print(a); //11
  // print(b); //10

  // int a = 10;
  // int b = ++a;//這行等於 先加在給值
  // //a = a + 1;
  // //int b = a;

  // print(a); // 11
  // print(b); // 11

  // int a = 10;
  // int b = a--;//這行等於 先給值在減
  // //int b = a;
  // //a = a - 1;

  // print(a); //9
  // print(b); //10

  // int i, j;

  // for (i = 1; i < 10; i++) {
  //   for (j = 1; j < 10; j++) {
  //     print(i * j);
  //   }

  // }

  // for (int i = 1; i <= 100; i++) {
  //   print(i);
  // }

  // for (int i = 1; i <= 10; i++) {
  //   print(i);
  // }

  // 1. 打印出0~50的所有偶數

  // for (int i = 0; i <= 50; i++) {
  //   if (i % 2 == 0) {
  //     print(i);
  //   }
  // }

  // 2. 求 1 + 2..... 加到 100 的合
  // int i,sum = 0;

  // for ( i = 1; i <= 100; i++) {
  //   sum += i;
  // }

  // print(sum);

  /*
      sum=0+1;

      sum=0+1+2;

      sum=0+1+2+3+.....100;
    */

  // 3. 計算5的階乘 (1*2*3*4*5   )

  // int i, sum = 1;

  // for (i = 1; i <= 5; i++) {
  //   sum *= i;
  // }

  // print(sum);

  /*
      sum=1*2;

      sum=1*2*3;

      sum=1*2*3*4;

      sum=1*2*3*4*5;
    */

  /* 打印List ["張三","李四","老五"] 裡面的內容 */

  // List l1 = ["張三", "李四", "老五"];

  // // 要從0開始 因為是 0 1 2 所以也小於3 不能用小於等於
  // for (int i = 0; i < 3; i++) {
  //   print(l1[i]); // 張三  李四   老五
  // }               // l1[0] l1[1] l1[2]

  // 5. 定義一個二維陣列 輸出裡面的內容

  /* 重要補充 */
  // List               |   [1,2,3]    |   陣列
  // Map                |   {"a":1}    |   鍵值對
  // List<Map>          |   [{"a":1} , {"b":2}]  |陣列裡裝字典
  // Map<String, List>  |  {"a":[1,2,3]}  |  字典裡裝陣列

  List list = [
    // 外層是 List（列表）← 有兩個元素

    {
      // 第一個元素是 Map，有兩個 key
      "cate": "國內", // 分類名稱
      "news": [
        // news 是 List，裡面是三個 Map
        {"title": "國內新聞 1"},
        {"title": "國內新聞 2"},
        {"title": "國內新聞 3"},
      ]
    },

    {
      //第二個分類
      "cate": "國外",
      "news": [
        {"title": "國外新聞 1"},
        {"title": "國外新聞 2"},
        {"title": "國外新聞 3"},
      ]
    }
  ];

  int i, j;

  for (i = 0; i < list.length; i++) {
    print(list[i]["cate"]);
    print("----------");
    for (j = 0; j < list[i]["news"].length; j++) {
      print(list[i]["news"][j]["title"]);
    }
    print('');
  }
}
