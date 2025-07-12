// void main() {
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
// String name = "Lilly";

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

// List list = [
//   // 外層是 List（列表）← 有兩個元素

//   {
//     // 第一個元素是 Map，有兩個 key
//     "cate": "國內", // 分類名稱
//     "news": [
//       // news 是 List，裡面是三個 Map
//       {"title": "國內新聞 1"},
//       {"title": "國內新聞 2"},
//       {"title": "國內新聞 3"},
//     ]
//   },

//   {
//     //第二個分類
//     "cate": "國外",
//     "news": [
//       {"title": "國外新聞 1"},
//       {"title": "國外新聞 2"},
//       {"title": "國外新聞 3"},
//     ]
//   }
// ];

// int i, j;

// for (i = 0; i < list.length; i++) {
//   print(list[i]["cate"]);
//   print("----------");
//   for (j = 0; j < list[i]["news"].length; j++) {
//     print(list[i]["news"][j]["title"]);
//   }
//   print(''); // Dart 裡一個print結束會自動換行 所以想換行就用空字串
// }

/* 更接地氣的Dart用法 */

// List	Dart 裡的「陣列」容器（用 [] 表示）
// Map<String, dynamic>	鍵是 String，值是任何型別
/*
    List<Map<String, dynamic>>
    這是一個更精確的宣告方式
    一個「List（列表）」，裡面每個元素是一個「Map」；
    這個 Map 的 key 是 String，value 是 dynamic（可以是任何型別）;
  */
// List<Map<String, dynamic>> list = [
//   {
//     "cate": "國內",
//     "news": [
//       {"title": "國內新聞 1"},
//       {"title": "國內新聞 2"},
//       {"title": "國內新聞 3"}
//     ]
//   },
//   {
//     "cate": "國外",
//     "news": [
//       {"title": "國外新聞 1"},
//       {"title": "國外新聞 2"},
//       {"title": "國外新聞 3"}
//     ]
//   }
// ];
// /*
//   for(Map<String,dynamic> category in list)
//   對 list 裡的每個元素做一次迴圈，元素變數叫 category (像是i的濃縮功能 也是變數可以隨便改name)
//   這是 Dart 的 for-in 迴圈寫法，跟 C 語言的 for(i=0; i<n; i++)相比
//   它更直覺、適合處理 List
// */
// for (Map<String, dynamic> category in list) {
//   print(
//       category["cate"]); //等於幫我從list裡 一個一個取出元素 命名為 category 我要拿裡面的 ["cate"] 來用
//   print("----------");
//   for (Map<String, dynamic> news in category["news"]) {
//     print(news[
//         "title"]); //等於幫我從category["news"]裡 一個一個取出元素 命名為 news 我要拿裡面的 ["title"] 來用
//   }
//   print(''); // Dart 裡一個print結束會自動換行 所以想換行就用空字串
// }

// int i = 1;

// while (i <= 10) {
//   print(i);
//   i++;
// }

// int j = 0;

// do {
//   print(j);
//   j++;
// } while (j < 5);

// // 死循環 執行了電腦可能會卡 關不掉

// int i = 0;
// while (i < 10) {
//   print(i); // 會一直跑 0
//   // 這要加 i++; 才不會死循環
// }

/* 1. 打印出0~50的所有偶數 */

//while

// int i = 0;

// while (i <= 50) {
//   print(i);
//   i += 2;
// }

// do while

// int i = 0;

// do {
//   i += 2; // 會先加 2
// } while (i < 100); // 因為會先加 2 所以就不用<= 會變102 用<就剛好100

// print(i);

/* 2. 求 1 + 2..... 加到 100 的合 */

//while

// int i = 1;
// int sum = 0;

// while (i <= 100) {
//   sum += i;
//   i++;
// }
// print(sum);

// do while

// int i = 1, sum = 0;

// do {
//   sum += i;
//   i++;
// } while (i <= 100);
// print(sum);

/* 3. 計算5的階乘 (1*2*3*4*5   ) */

// int i = 1;
// int sum = 1; //算階乘sum不能宣告0 輸出永遠都會是 0

// while (i <= 5) {
//   sum *= i;
//   i++;
// }

// print(sum);

// do while

// int i = 1;
// int sum = 1;

// do {
//   sum *= i;
//   i++;
// } while (i <= 5);

// print(sum);

/* while 和 while 的區別  第一次循環條件不成立的情況下*/

// while
// int i = 2;

// while (i < 2) {
//   print("執行代碼"); // 不會執行
// }

// // do while
// int j = 2;

// do {
//   print("執行代碼"); // 會先執行一次
// } while (j < 2);

// int i;
// for (i = 1; i <= 10; i++) {
//   if (i == 2) break;
//   print(i);
// }

// int i;

// for (i = 1; i <= 10; i++) {
//   if (i == 2) continue;
//   print(i);
// }

// for (int i = 1; i < 5; i++) {
//   print("外層-----$i");
//   for (int j = 1; j < 5; j++) {
//     if (j == 3) break;
//     print("裡面$j");
//   }
// }

// List myList = ["Lilly", 'Chris', "LY"];

// print(myList); // [Lilly, Chris, LY]
// /* length isEmpty isNotEmpty */
// print(myList.length); // 3
// print(myList.isEmpty); // false
// print(myList.isNotEmpty); // true
// /* reversed */
// print(myList.reversed); // (LY, Chris, Lilly) 對列表進行倒敘排序
// /*
// reversed 回傳的是 Iterable，不是 List 所以輸出才不是 中括號
// Iterable = 可看、可走訪，但不能直接改裡面的資料 現在初學知道這樣就好
// */
// List newMyList = myList.toList(); // Iterable 轉回 List 就可以修改
// print(newMyList); // [Lilly, Chris, LY]

/* List 裡面常用的方法 */
// List myList = ["Lilly", 'Chris', "LY"];
// /* add addAll*/
// myList.add("釋迦"); // 增加資料 只能增加一個
// myList.addAll(["芒果", "草莓"]); // 拼接到數組(陣列)裡 所以要用中括號
// /* indexOf */
// print(myList.indexOf("LY"));  // 查找數據 輸出 2 因為數組是從 0 1 2 所以是 2
// print(myList.indexOf("YL"));  // 查找數據 查找不到回傳-1
// /* remove removeAt */
// myList.remove("LY"); // 刪除LY數據
// myList.removeAt(2); // 刪除 2 數據就是 LY

// print(myList); // 開啟這裡測試

// List myList = ["Lilly", 'Chris', "LY"];
// /* fillRange */
// myList.fillRange(0, 2, 'aaa'); // 修改多個數據 0是開始 2是結尾 所以改到 0 1而已 改的內容'aaa'
// /* insert */
// myList.insert(1, 'aaa'); // 插入單個數據 在原本 Chris 的前面 插入'aaa'
// /* insertAll */
// myList.insertAll(1, ['aaa','bbb']);  // 插入多個數據 在原本 Chris 的前面 插入'aaa' 和 'bbb'
// print(myList); // 開啟這裡測試

// List myList = ["Lilly", 'Chris', "LY"];
// /* join */
// var str = myList.join('-'); //list 轉換成字符串

// print(str); // Lilly-Chris-LY
// print(str is String); // true 是String類型 可以用String 宣告
// /* split */
// String str = "Lilly- Chris- LY";
// List list = str.split('-');

// print(list); // [Lilly,  Chris,  LY]
// print(list is List); // true 是List類型 可以用List 宣告

// var s = new Set();

// s.add('Lilly');
// s.add('Chris');
// s.add('Lilly');

// print(s); // {Lilly, Chris} 不會重複打印

/* Set 基本用法 */
// var s = new Set();

// s.add('Lilly');
// s.add('Chris');
// s.add('Lilly');

// print(s); // {Lilly, Chris} 不會重複打印
// print(s.toList());  // Set 變 List [Lilly, Chris] 沒有在一個'Lilly'是因為他只是單純轉換 Set 的s變數
/* 影片中教的刪除重複資訊做法 */
// List myList = ['張三', '李四', '老五', '張三', '李四', '老五'];

// var s = new Set();
// s.addAll(['張三', '李四', '老五', '張三', '李四', '老五']);
// print(s.toList());  // {張三, 李四, 老五}

/* 我的作法 簡單 快 清楚 */

// List myList = ['張三', '李四', '老五', '張三', '李四', '老五'];

// print(myList.toSet());  // {張三, 李四, 老五}

// Map<String, dynamic> person = {"name": "張三", "age": 20};
// var m = new Map();

// m["name"] = "李四";

// print(person);
// print(m);

// Map<String, dynamic> person = {"name": "張三", "age": "20", "sex": "男"};

// person.addAll({
//   "work": ['敲代碼', '送外賣'],
//   "height":160
// });

// print(person);

// person.remove("sex");
// print(person);  // {name: 張三, age: 20}
// print(person.remove("sex")); // 不能因為方便 就這樣用 只會輸出你刪掉的內容

// print(person.containsValue('張三'));
// 看Map是否有這個值 true 有值

// List myList = ['香蕉', '蘋果', '芭樂'];
/* 較一般 */
// for (int i = 0; i < myList.length; i++) {
//   print(myList[i]);
// }

/* 更簡潔 */
// 變數宣告盡量用var 因為這個變數item經常不是單單一個型態
// for (var item in myList) { // item 是自己取的變數 在myList 裡面++
//   print(item); // 就會輸出 香蕉 蘋果 芭樂
// }

/* forEach */
// List myList = ['香蕉', '蘋果', '芭樂'];

// myList.forEach((value) { // forEach 裡面放方法 格式:(東西){做什麼} 這裡是(值){輸出值}
//   print(value);
// });

/* map */
//題目: myList 裡面的值都乘2 然後輸出List

// List myList = [1, 3, 5];

// var newList = myList.map((value) { // 變數宣告盡量用var 因為這個變數經常不是單單一個型態
//   return value * 2; // 回傳裡面值乘2
// });
// print(newList is dynamic); // 他是任何型態 true
// print(newList.toList()); // 任何型態轉List 在輸出 [2, 6, 10]

/* where */
//題目: myList 裡面大於5的話 放到新的集合
// List myList = [1, 3, 4, 5, 7, 8, 9];

// var newList = myList.where((value) { // 變數宣告盡量用var 因為這個變數經常不是單單一個型態
//     return value>5; // 值大於5的話 就放到新的集合newList
// });

// print(newList.toList());  // [7, 8, 9]

/* any */
//題目: myList 裡面的值是否有大於5的

// List myList = [1, 3, 4, 5, 7, 8, 9];

// var f = myList.any((value) { // 變數宣告盡量用var 因為這個變數經常不是單單一個型態
//   return value > 5;  // 只要集合裡面有滿足條件的就回傳true
// });

// print(f);

/* every */
//題目: myList 裡面的值是否有「都」大於5的

// List myList = [1, 3, 4, 5, 7, 8, 9];

// var f = myList.every((value) { // 變數宣告盡量用var 因為這個變數經常不是單單一個型態
//   return value > 5;  // 每一個都滿足條件就回傳true 否則回傳false
// });

// print(f);

/* Set */

// var s = new Set();

// s.addAll([1, 22, 333]);

// s.forEach((value) => print(value)); // 單一個動作就可以用 =>

// Map<String, dynamic> person = {"name": "張三", "age": 20};

// person.forEach((keys, value) { // Map 就要兩個參數
//   print("$keys----$value");
// });
// }

// /* 這裡是全區域宣告 */
// void printInfo() {
//   // 叫printInfo()函式 就會輸出 我是一個自訂義方法
//   print('我是一個自訂義方法'); // 輸出 我是一個自訂義方法
// }

// int getNum() {
//   // 叫getNum函式 就會回傳值
//   int myNum = 123; // 給值
//   return myNum; // 回傳值而已 沒有輸出
// }

// String printUserInfo() {
//   // return 123; // 會報錯 因為String只能用於字串
//   return 'Hello World!';
// }

// List getList() {
//   return ['111', '222', '333'];
// }

// void main() {
//   printInfo(); // 我是一個自訂義方法 // 他function本身就有print 所以不用用print包起來

//   print(getNum()); // 123

//   print(printUserInfo()); // Hello World!

//   print(getList()); // [111, 222, 333]

// /* 演示aaa function 在main function作用域限制  */
//   void xxx() {
//     void aaa() {
//       print('aaa');
//     }
//     aaa();
//   }

//   // aaa(); // 叫不出來 因為有區域限制
//   xxx();  // aaa // 這裡就可以叫出來
// }

// 調用函式傳參

// import 'dart:ffi';

// void main() {
// 1. 1-100求和

// int sum = 0;

// for (int i = 1; i <= 100; i++) {
//   sum += i;
// }
// print(sum);

// 2. 1-90求和

// int sum = 0;

// for (int i = 1; i <= 90; i++) {
//   sum += i;
// }
// print(sum);

// 3. 1-60求和

// int sum = 0;

// for (int i = 1; i <= 60; i++) {
//   sum += i;
// }
// print(sum);

/* 1. 定義一個方法 求1到這個數的所有數的和 */

// int sumNum(int x) {
//   // x 參數最好加上型別比較安全
//   int sum = 0;

//   for (int i = 1; i <= x; i++) {
//     // 計算合的迴圈
//     sum += i;
//   }
//   return sum; // 回傳和
// }

// print(sumNum(60)); // 1830 // 這裡的參數可以隨便改數字 就會算到該數字的和
// print(sumNum(5)); // 15
// print(sumNum(100)); // 5050

/* 2. 定義一個函式 然後打印用戶信息 */

// String printUserInfo(String username, int age) {
//   return "名字: $username----年齡: $age";
// }

// print(printUserInfo('Lilly', 18));

/* 3. 定義一個可選參數的函式 */

// String printUserInfo(String username, [int? age]) { // 加中括號就是不一定有參數 不知道有沒有值就要加? 用來宣告空型態
//   if(age!=null){  // 是否不等於空值
//     return "名字: $username----年齡: $age";
//   }
//   return "名字: $username----年齡:*"; // 都沒有就回傳這個
// }

// print(printUserInfo('Lilly'));  // 名字: Lilly----年齡:*

/* 4. 定義一個默認參數的函式 */

// String printUserInfo(String username, [String? sex='男',int? age,]) { // 默認參數通常放前面 丟實際參數的時候 順序不要搞錯了
//   if(age!=null){  // 是否不等於空值
//     return "名字:$username--性別:$sex--年齡:$age";
//   }
//   return "名字:$username--性別:$sex--年齡:*"; // 都沒有就回傳這個
// }

// print(printUserInfo('Lilly'));  // 名字:Lilly--性別:男--年齡:*
// print(printUserInfo('Lilly','女'));  // 名字:Lilly--性別:女--年齡:*
// print(printUserInfo('Lilly','女',30));  // 名字:Lilly--性別:女--年齡:30

/* 5. 定義一個命名參數的函式 */

// String printUserInfo(String username,{ String? sex='男',int? age,}) { // 默認參數通常放前面 丟實際參數的時候 順序不要搞錯了
//   if(age!=null){  // 是否不等於空值
//     return "名字:$username--性別:$sex--年齡:$age";
//   }
//   return "名字:$username--性別:$sex--年齡:*"; // 都沒有就回傳這個
// }

// print(printUserInfo('Lilly',age:18,sex: '未知'));  // 名字:Lilly--性別:未知--年齡:18

/* 6. 實現一個 把方法當作參數的函式 */

// //函式1
// void fn1() {
//   print("fn1");
// }
// //函式2
// void fn2(fn) {
//   fn();
// }
// // 調用fn2 這個函式 把fn1 這個方法當作參數傳入
// fn2(fn1); // fn1

/* 需求: 使用forEach打印下面List裡面的數據 */
/* 一般函式 */
// List box = ['香蕉', '蘋果', '芭樂'];

// box.forEach((value) {
//   print(value);
// });
// print(''); // 換行
/* 高效率簡潔的箭頭函式 */
// box.forEach((value) =>print(value)); // 單一行一個動作就可以用 => 1.還有一行的話 就不用大括號括起來 2.print後面就不用加;分號

// box.forEach((value) => { // 不能用 因為這裡的大括號會判定為Set集合
//   print(value)
// });

/* 需求: 修改下面List裡面的數據 讓數組大於2的值乘以2 */

// List list = [4, 1, 2, 3, 4];
/* 一般函式 */
// var newList = list.map((value) {
//   if (value > 2) {  // 如果value大於2
//     return value * 2; // 就回傳value*2
//   }
//   return value; // 都沒有就回傳value
// });

// print(newList.toList());

/* 高效率簡潔的箭頭函式 */
// var newList = list.map((value) => value > 2 ? value * 2 : value);

// print(newList.toList());

/* 
  需求: 1.定義一個函式isEvenNumber來判斷一個數是否偶數
        2.定義一個函式打印1-n以內的所有偶數
*/
// 1.
//   bool isEvenNumber(int n) {
//     if (n % 2 == 0) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// // 2.
//   void printNum(int x) {
//     for (int i = 1; i <= x; i++) {
//       if(isEvenNumber(i)){  // 傳入i值給isEvenNumber判斷是否為偶數
//         print(i);
//       }
//     }
//   }

//   printNum(19);

/* 具名函式 */

// void printNum() {
//   print(123);
// }
// printNum(); // 123

/* 匿名函式 */

// 通常用在 forEach map 等方法裡
// (value) {
//   print(value + 12);
// };

/* 自執行函式 */
// ((int n) {  // 宣告參數
//   print(n); // 12
//   print('我是自執行函式');
// })(12); // 丟入參數

/* 函式的遞歸 */

// int sum = 1;

// void fn(int n) {
//   sum *= n;
//   if (n == 1) { // 怕死循環 所以規定範圍
//     return;
//   }
//   fn(n - 1);  // 自己叫自己 要有範圍 不然會死循環
// }
// fn(5);
// print(sum); // 120

/* 通過方法的遞歸 求1-100的和 */

// int sum = 0;

// void fn(int x) {
//   sum += x;
//   if (x == 0) { // 怕死循環 所以規定範圍
//     return;
//   }
//   fn(x - 1);  // 遞歸
// }

// fn(100);
// print(sum); // 5050

// List list = ['芒果']; // List 是類
// list.isEmpty;
// list.add('香蕉');
// list.add('芭樂');

// print(list);

// Map m = new Map(); // Map 是類
// m["name"] = ["張三"];
// m.addAll({"age": 20});
// m.isEmpty;

// print(m);
// }

/* 定自類 */
// class Person {
//   String name = '張三';
//   int age = 20;

//   void getInfo() {  // 宣告輸出名字年齡的類
//     // print("$name----$age"); 類裡不推薦用這個
//     print("${this.name}----${this.age}"); // 要加大括號不然輸出會沒有類型
//   }

//   void setInfo(age) { // 宣告換年齡的類
//     this.age = age;
//   }
// }

// void main() {
// /* 不推薦這樣寫 */
//   // var r = new Person();

//   // print(r.name); // 張三
//   // print(r.age);  // 20
//   // r.getInfo(); // 張三----20

// /* 推薦這樣寫 */
//   Person r = new Person(); // 宣告r是Person類

//   print(r.name); // 用r物件導向到name
//   r.setInfo(18); // 用r物件導向到setInfo類
//   r.getInfo(); // 用r物件導向到getInfo類
// }

// class Person {
//   String name = 'Lilly';
//   int age = 18;

//   void getInfo() {
//     print("${this.name}-----${this.age}");
//   }

//   void setInfo(int age) {
//     this.age = age;
//   }
// }

// void main() {
//   Person r = new Person();

//   print(r.name);
//   print(r.age);
//   r.setInfo(28);
//   r.getInfo();
// }

// class Person {
//   String name = 'Lilly';
//   int age = 19;
//   // 默認構造函式
//   Person() {
//     print('這是構造函式裡面的內容 這個方法在實例化的時候觸發');
//   }
//   void printInfo() {
//     print("${this.name}----${this.age}");
//   }
// }

// class Person {
//   String? name;
//   int? age;
//   // 默認構造函式
//   Person(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }
//   void printInfo() {
//     print("${this.name}----${this.age}");
//   }
// }

// void main() {
//   Person r = new Person('Lilly',19);

//   r.printInfo(); // Lilly----19

//   Person p2 = new Person('Lilly',17);

//   p2.printInfo(); // Lilly----17
// }

// class Person {
//   String name = 'Lilly';
//   int age = 19;

//   Person();

//   Person.now() {
//     print('Hello World!');
//   }

//   Person.setInfo(name, age) {
//     this.name = name;
//     this.age = age;
//   }
//   void printInfo() {
//     print("${this.name}----${this.age}");
//   }
// }

// void main() {
//   Person r = new Person();
//   r.printInfo();
// }

// class Rect {
//   num? height;
//   num? width;

//   Rect(this.height, this.width);

//   num? area() {
//     if (height == null || width == null) return 0;
//     return height! * width!;
//   }

//   void getInfo() {
//     print(area());
//   }
// }

// void main() {
//   Rect r = new Rect(10, 20);

//   print("面積:${r.area()}");
// }

/* getter */
// class Rect {
//   num? height;
//   num? width;

//   Rect(this.height, this.width);

//   get area{ // 用get關鍵字就不用加小括號
//     if (height == null || width == null) return 0;
//     return height! * width!;
//   }
// }
// void main() {
//   Rect r = new Rect(10, 2);

//   print("面積:${r.area}");  // 面積:20  // 注意調用直接通過訪問屬性的方式訪問area
// }

// /* setter */

// class Rect {
//   num? height;
//   num? width;

//   Rect(this.height, this.width);

//   get area {
//     if (height == null || width == null) return 0;
//     return height! * width!;
//   }

//   set areaHight(value) {
//     this.height = value;
//   }
// }

// void main() {
//   Rect r = new Rect(10, 20);

//   print("面積:${r.area}");

//   r.areaHight=6;

//   print("面積:${r.area}");
// }

// class Rect {
//   num height;
//   num width;

//   Rect(this.height, this.width);

//   get area {
//     return height * width;
//   }
// }

// void main() {
//   Rect r = new Rect(10, 20);
//   print(r.area);
// }

// import 'lib/Person.dart';

// class Person {
//   static String name = '張三';
//   int age = 19;

//   static void show() {
//     print(name);
//   }

//   void printInfo() {
//     // 非靜態方法可以訪問 靜態成員 非靜態成員
//     print(name); // 訪問靜態屬性
//     print(age); // 訪問非靜態屬性
//     show(); // 調用靜態方法
//   }

//   static void printUserInfo() {
//     print(name); // 靜態屬性
//     show(); // 靜態方法
//     // print(age);  靜態方法無法訪問非靜態的屬性
//     // printInfo();  靜態方法無法訪問非靜態的方法
//   }
// }

// void main() {
// print(Person.name);
// Person.show();

// Person p = Person();
// p.printInfo();

//   Person.printUserInfo();
// }

// class Person {
//   String name;
//   num age;

//   Person(this.name, this.age);

//   void printInfo() {
//     print("${this.name} --- ${this.age}");
//   }
// }

// void main() {
// Person p = new Person('Lilly', 18);

// if (p is Person) {  // p 是 Person 類型的物件
//   p.name = '李四';
// }
// p.printInfo();

// print(p is Object); // p的所有物件都是 Object 子類

// var p1;

// p1 = ' ';
// p1 = new Person('張三1', 18);
// // p1.printInfo();  不推
// (p1 as Person).printInfo(); // 推

//   Person p1 = new Person('張三', 19);

// /* 一般 */
//   // p1.name = "Lilly";
//   // p1.age = 18;
//   // p1.printInfo();
// /* 更簡潔 */
//   p1
//     ..name = '李四' // 不用分號隔開
//     ..age = 30
//     ..printInfo();
// }

// class Person {
//   String? name;
//   num? age;

//   Person(this.name, this.age);

//   void printInfo() {
//     print("${this.name} --- ${this.age}");
//   }
// }

// class Web extends Person {
//   String? sex;
//   Web(String name, num age, String sex) : super(name, age) {
//     this.sex = sex;
//   }
//   void run() {
//     print("${this.name} --- ${this.age}---${this.sex}");
//   }
// }

// void main() {
//   // Person p = Person('Lilly', 19);
//   // p.printInfo();

//   // Person p1 = Person('Lilly', 17);
//   // p1.printInfo();

//   Web w = Web('Chris', 16, '男');

//   w.printInfo(); // Chris --- 16
//   w.run(); // Chris --- 16---男

// }

// class Person {
//   String? name;
//   num? age;

//   Person(this.name, this.age);

//   void printInfo() {
//     print('${this.name}-----${this.age}');
//   }

//   void work() {
//     print('${this.name}在工作...');
//   }
// }

// class Web extends Person {
//   Web(String name, num age) : super(name, age);

//   run() {
//     super.work(); // 自類調用父類的方法
//   }
//   // 覆寫父類的方法
//   @override // 建議覆寫的前面加上@override
//   void printInfo() {
//     print('姓名:${this.name}-----年齡:${this.age}');
//   }

//   @override
//   void work() {
//     print('${this.name}在台積電工作');
//   }
// }

// void main() {
//   Web w = Web('Lilly', 19);

//   w.printInfo();  // 姓名:Lilly-----年齡:19

//   w.work(); // Lilly在台積電工作

//   w.run();  // Lilly在工作...
// }

// class Person {
//   String? name;
//   String? work;
//   num? age;

//   Person(this.name, this.work, this.age);

//   static int play(value) {
//     return value * value;
//   }

//   void printWork() {
//     print('${this.name}在${this.work}上班');
//   }

//   void printInfo() {
//     print('${this.name}今年${this.age}歲');
//   }
// }

// class Web extends Person {
//   Web(String name, num age, String work) : super(name, work, age);

//   static void run() {
//     print('run');
//   }

//   @override
//   void printWork() {
//     print('在${this.work}上班的${this.name}');
//   }

//   @override
//   void printInfo() {
//     print('今年${this.age}歲的${this.name}');
//   }
// }

// void main() {
//   print('--------Person---------');
//   Person p1 = Person('Ethan', 'Google', 19);

//   p1.printInfo();
//   p1.printWork();
//   print(Person.play(10));

//   print('--------Person---------');
//   print('--------Web------------');

//   Web w = Web('Lilly', 18, 'Apple');

//   w.printInfo();
//   w.printWork();
//   Web.run();
// }

// abstract class Animal {
//   void eat(); // 抽象方法
//   void run(); // 抽象方法

//   void printInfo() {
//     print("我是一個抽象類");
//   }
// }

// class Dog extends Animal {
//   @override
//   void eat() {
//     print('狗在啃骨頭');
//   }

//   @override
//   void run() {
//     print('狗在跑');
//   }
// }

// class Cat extends Animal {
//   @override
//   void eat() {
//     print('貓在吃魚');
//   }

//   @override
//   void run() {
//     print('貓在跑');
//   }
// }

// void main() {
//   Dog d = Dog();
//   d.eat(); // 狗在啃骨頭
//   d.run(); // 狗在跑
//   d.printInfo(); // 我是一個抽象類

//   Cat c = Cat();
//   c.eat(); // 貓在吃魚
//   c.run(); // 貓在跑
//   c.printInfo(); // 我是一個抽象類

//   // Animal a = Animal(); 抽象類不能實例化
// }

// abstract class Animal {
//   void eat(); // 抽象方法
// }

// class Animal {
//   void run() {
//     print('跑');
//   }

// }

// class Dog extends Animal {
//   @override
//   void eat() {
//     print('狗在啃骨頭');
//   }

//   void run() {
//     print('run');
//   }
// }

// class Cat extends Animal {
//   @override
//   void eat() {
//     print('貓在吃魚');
//   }

//   void run() {
//     print('run');
//   }
// }

// void main() {
//   // Dog d = Dog();
//   // d.eat(); // 狗在啃骨頭
//   // d.run();

//   Animal d = Dog();
//   d.eat(); // 狗在啃骨頭

//   Animal c = Cat();
//   c.eat(); // 貓在吃魚

//   // Cat c = Cat();
//   // c.eat(); // 貓在吃魚
// }

// abstract class Db { // 當作接口  接口: 約定 規範
//   String? uri;      // 數據庫的連接地址
//   add(String data);
//   save();
//   delete();
// }

// class Mysql implements Db {
//   @override
//   String? uri;

//   Mysql(this.uri);

//   @override
//   add(data) {
//     print('這是mysql的add方法' + data);
//   }

//   @override
//   delete() {
//     throw UnimplementedError();
//   }

//   @override
//   save() {
//     throw UnimplementedError();
//   }
// }

// class mssql implements Db {
//   @override
//   String? uri;

//   @override
//   add(data) {
//     print('這是mssql的add方法' + data);
//   }

//   @override
//   delete() {
//     throw UnimplementedError();
//   }

//   @override
//   save() {
//     throw UnimplementedError();
//   }
// }

// void main() {
//   Mysql mysql = Mysql('xxxxxx');
//   mysql.add('123');
// }

// abstract class A {
//   String? name;
//   void printA();
// }

// abstract class B {
//   String? name;
//   void printB();
// }

// /* 實現多個接口 */
// class C implements A, B {
//   @override
//   String? name;

//   @override
//   void printA() {
//     print('我是A');
//   }

//   @override
//   void printB() {
//     print('我是B');
//   }
// }

// void main() {
//   C c = C();
//   c.printA(); // 我是A
//   c.printB(); // 我是B
// }

// mixin class A {
//   String info = "this is A";
//   void printA() {
//     print('A');
//   }
// }

// mixin class B {
//   void printB() {
//     print('B');
//   }
// }

// class C with A, B {

// }

// void main() {
//   C c = C();

//   print(c.info);  // this is A
//   c.printA(); // A
//   c.printB(); // B
// }
// 案例: 把下面類傳換成泛型類 要求MyList裡面可以增加int類型的數據 也可以增加String類型的數據 但是每次調用增加的類型要統一
// class MyList<T> {
//   List list = <T>[];
//   void add<T>(value) {
//     this.list.add(value);
//   }

//   List getList() {
//     return list;
//   }
// }

// void main() {
//   // MyList l1 = MyList();
//   // l1.add(1);
//   // l1.add(12);
//   // l1.add(5);
//   // print(l1.getList()); // [1, 12, 5]

//   // MyList l2 = MyList<String>();
//   // l2.add('Ethan');
//   // // // l.add(12); 會報錯
//   // print(l2.getList()); // [Ethan]

//   MyList l3 = MyList<int >();
//   l3.add(11);
//   l3.add(12);
//   // l3.add('aaa'); 會報錯
//   print(l3.getList()); // [11, 12]

//   // List list = List.filled(2, ' ');
//   // list[0] = '張三';
//   // list[1] = '李四';
//   // print(list);

//   // List list = new List.filled(2, ' ');
//   // list[0] = '張三1';
//   // list[1] = '李四';
//   // print(list);

//   // List list = new List<String>.filled(2, ' ');
//   // list[0] = '張三';
//   // list[1] = '李四';
//   // print(list);

//   // List list = new List<int>.filled(2, 1);
//   // list[0] = 19;
//   // // list[1] = '李四'; // 報錯
//   // print(list);
// }

// abstract class ObjectCache {
//   getByKey(String key);
//   void setByKey(String key, Object value);
// }

// abstract class StringCache {
//   getByKey(String key);
//   void setByKey(String key, Object value);
// }

// abstract class Cache <T>{
//   getByKey<T>(key);
//   void setByKey<T>( key,  value);
// }

// abstract class Cache<T> {
//   getByKey(String key);
//   void setByKey(String key, T value); // T類型在括號裡就不用加<>
// }

// class FileCache<T> implements Cache<T> {
//   @override
//   getByKey(String key) {
//     throw UnimplementedError();
//   }

//   @override
//   void setByKey(String key,T value) {
//     print('我是文件緩存 把Key=${key} value=${value}的數據寫入到了文件中');
//   }
// }

// class MemoryCache<T> implements Cache<T>{
//   @override
//   getByKey(String key) {
//     throw UnimplementedError();
//   }

//   @override
//   void setByKey(String key, T value) {
//     print('我是內存緩存 把Key=${key} value=${value}的數據寫入到了內存中');
//   }

// }

// void main() {

//   MemoryCache M1 = MemoryCache<String>();
//   // M.setByKey('index', 789); 會報錯
//   M1.setByKey('index', '首頁數據');

//   MemoryCache M2 = MemoryCache<Map>();
//   // M.setByKey('index', '首頁數據'); 會報錯
//   M2.setByKey('index', {'name':'Ethan',"age":20});

// }

/*
Dart 中的泛型接口：

  實現數據緩存的功能：有文件緩存，和內存緩存。內存緩存和文件緩存按照接口約束實現。

  1、定義一個泛型接口，約束實現它的子類必須有 getByKey(key) 和 setByKey(key, value)

  2、要求 setByKey 的時候的 value 的類型和實例化子類的時候指定的類型一致
*/

// abstract class Cache<T> {
//   getByKey(String key);
//   setByKey(String key, T value);
// }

// class FileCache<T> implements Cache<T> {
//   @override
//   getByKey(String key) {
//     throw UnimplementedError();
//   }

//   @override
//   setByKey(String key, T value) {
//     print('我是文件內存Key:$key value:$value的資料');
//   }
// }

// class MemoryCache<T> implements Cache<T> {
//   @override
//   getByKey(String key) {
//     throw UnimplementedError();
//   }

//   @override
//   setByKey(String key, T value) {
//     print('我是文件內存Key:$key value:$value的資料');
//   }
// }

// void main() {
//   FileCache F = FileCache<String>();
//   F.setByKey('123', '456');

//   MemoryCache M = MemoryCache<Map>();
//   M.setByKey('456', {'name':'Ethan','age':19});
// }

// import 'dart:io';
// import 'dart:math';

// main() {
//   print(min(12, 23));
//   print(max(12, 23));
// }

// import 'dart:io';
// import 'dart:convert';

// void main(){

// }

// String? getData(apiUrl) {
//   if (apiUrl != null) {
//     return 'this is server data';
//   }
//   return null;
// }

// void printLength(String? str) {
//   print(str!.length);
// }

// void main() {
// /* ?可空類型 */
//   /* int  */

//   // int a = 123;
//   // print(a);

//   // int x = 123; // 非空的int類型
//   // x = null; // 所以不能用空類型

//   int? a = 123; // int? 表示是一個可空類型
//   a = null; // 給a賦空
//   print(a); // null

//   /* String */

//   // String username = "張三";
//   // print(username);

//   // String username = '張三'; // 非空String類型
//   // username = null; // 所以不能用空類型

//   String? username = '張三'; // String? 表示username是一個可空類型
//   username = null; // 給username賦空
//   print(username); // null

//   /* List */

//   // List<String> li = ['張三', '李四', '老五'];
//   // print(li);

//   // List<String> li = ['張三', '李四', '老五']; // 非空List類型
//   // li = null; // 所以不能用空類型

//   List<String>? li = ['張三', '李四', '老五']; // List? 表示li是一個可空類型
//   li = null; // 給li賦空
//   print(li); // null

//   /* 調用方法 */
//   print(getData("http://www.itying.com")); // this is server data
//   print(getData(null)); // null

// /* ! 類型斷言 */

//   // String? str = "this is str";
//   // str = null;
//   // print(str!.length); // 類型斷言: 如果str不等於null 會打印str的長度 , 如果等於null會出現異常

//   printLength('http'); // 4
//   printLength(null); // 報錯
// }

// class Person {
//   late String name;
//   late int age;

//   void setName(String name, int age) {
//     this.name = name;
//     this.age = age;
//   }

//   String getName() {
//     return '${this.name}------${this.age}';
//   }
// }

// void main() {
//   Person p = Person();
//   p.setName('Ethan', 19);
//   print(p.getName());
// }

// void main() {
// /* const 常量 */
//   const PI = 3.14;
//   // PI = 3.1415926; 不行
//   print(PI);

// /* final 常量 */
//   final Pi = 3.14;
//   // PI = 3.1415926; 不行
//   print(Pi);

// /* final 和 const 區別: final 可以開始不賦值 只能賦一次 ，而final 不僅有const的編譯時常 */

//   final a;
//   a = 13; // 只能賦值一次
//   //a=14; 不能賦值第二次
//   print(a);

//   final d = DateTime.now(); // 2025-07-04 19:36:27.987462
//   print(d);
// }

// void main(){
// List list = [1, 2, 3];
// Set set = {1, 2, 3};
// Map map = {'name': 'Ethan', 'age': 18};

// print(list);
// print(set);
// print(map);

// List myList = ["Ethan", 'Chris', "Lily"];
// var str = myList.join('-'); //list 轉換成字符串

// print(str); // Ethan-Chris-Lily
// print(str is String); // true 是String類型 可以用String 宣告
// }

class Person {
  String? name;
  num? age;

  Person(this.name, this.age);

  void printInfo() {
    print("名字:${this.name} 年齡:${this.age}");
  }
}

void main() {
  Person p = Person("ethan", 19);

  print(p.name);
  print(p.age);
  p.printInfo();
}
