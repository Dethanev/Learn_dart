```dart
/*

  1.Dart 運算符:

    算術運算符

      +    -    *    /    ~/ (取整)    % (取餘)

    關係運算符

      ==   !=    >    <    >=    <=

    邏輯運算符
      
      !   &&   ||

    賦值運算符

      基礎賦值運算符  =   ??=
      複合賦值運算符  +=   -=  *=  /=  %=  ~/=

    條件表達式

      if else switch case

      三目運算符

      ??運算符:


  2.類型轉換

      Number 與 String 類型之間的轉換

      其他類型換成Booleans類型

 */

void main() {
  int a = 13;
  int b = 5;

  print(a + b); //加 |18
  print(a - b); //減 |8
  print(a * b); //乘 |65
  print(a / b); //除 |2.6
  print(a % b); //取餘 |3
  print(a ~/ b); //取整 |2

  var c = a * b;

  print("---------");
  print(c); //65
}

void main() {
== | != | > | < | >= | <= |

  int a = 5;
  int b = 3;

  print(a == b); //判斷是否相等 |false
  print(a != b); //判斷是否不等 |true
  print(a > b); //判斷是否大於  |true
  print(a < b); //判斷是否小於  |false
  print(a >= b); //判斷是否大於等於 |true
  print(a <= b); //判斷是否小於等於 |false

  if (a > b) {
    print('a大於b');
  } else {
    print('a小於b'); //小於所以輸出這個
  }
}

void main() {
  /*  !取反   */

  bool flag = false;

  print(flag); //false
  print(!flag); //true

/* &&並且:全部為true的話值為true 否則值為false */

bool a = true;
bool b = false;

print(a && b); //false

bool x = true;
bool y = true;

print(x && y); //true

  /* ||或者: 全為false的話值為false 否則值為true */

bool a = false;
bool b = false;

print(a || b); //false

bool x = true;
bool y = false;

print(x || y); //true

bool c = true;
bool d = true;

print(c || d); //true

如果一個人的年齡是20 並且 sex是女的話我們打印這個人

int age = 30;
String sex = '女';

if (age == 20 && sex == '女') {
print("$age-----$sex");
} else {
print("不輸出"); //輸出
}

如果一個人的年齡是20 或者 sex是女的話我們打印這個人

int age = 30;
String sex = '女';

if (age == 20 || sex == '女') {
print("$age-----$sex"); //輸出
} else {
print("不輸出");
}
}

void main() {
1. 基礎賦值運算符號  =   ??=

  int a = 10;
  int b = 3;

  print(a);

  int c = a + b; //從左到右賦值
  print(c); // 13

b??=23; 表示如果b為空的話 把23賦值給b

int a = 15;
a ??= 23; //他覺得是廢話 所以黃

print(a); //15

int? b; //不能直接int b; 因為dart有空安全這東西 所以要加?

b ??= 23;

print(b); //23

2. 複合賦值運算符號  +=   -=  *=  /=  %=  ~/=

  /* += */
int a = 12;

a += 10; // a = a + 10;

print(a); // 22


  /* -= */
int b = 12;

b -= 10; // b = b - 10;

print(b); // 2


  /* *= */

int c = 12;

c *= 10; // c = c * 10;

print(c); //120


  /* /= */

double d = 12; //除會有小數要用 double

d /= 10; // d = d / 10;

print(d); //1.2


  /* %= */

int e = 12;

e %= 10; // e = e % 10;

print(e); //2
  

  /* ~/= */

int f = 12;

f ~/= 10; // f = f ~/ 10;

print(f); //1
}

void main() {
1. if else switch case

  /* if else */

  bool flag = true;

  if (flag == true) {
if 等於如果
    print("true");
  } else {
else 等於否則 什麼都沒有就會在這執行
    print("false");
  }

用 if else 判斷一個人的成績
如果大於60顯示 及格 |如果大於70顯示 良好 | 如果大於90顯示 優秀

  int score = 80;

  if (score > 90) {
if 等於如果
    print('優秀');
  } else if (score > 70) {
else if 等於否則如果
    print('良好'); //輸出
  } else if (score > 60) {
    print('及格');
  } else {
else 等於否則 什麼都沒有就會在這執行
    print('不及格');
  }

  /* switch case */

用 switch case 判斷一個人的成績
如果大於60顯示 及格 |如果大於70顯示 良好 | 如果大於90顯示 優秀

int score = 80;

switch (score) {
case > 90:
print('優秀');
break; //加break是離開的意思 怕繼續執行到下面的輸出
case > 70:
print('良好'); //輸出
break;
case > 60:
print('及格');
break;
default:  //什麼都沒有就會跑到 default 執行
print('不及格');
}

2. 三目運算符

方法一
bool flag = true;
String c;

c = flag == true ? '我是true' : '我是false';
//c等於 flag如果等於true '我是true' 否則 '我是 false

print(c);

方法二
bool flag = true;
String c;

if (flag == true) {
c = "我是true";
} else {
c = "我是false";
}

print(c);

兩個方法都一樣 簡單的條件就會用方法一 比較簡潔

3. ??運算符

int? a ;
int? b = a ?? 10; // a是空就等於10 b就等於a

print(b);
}

void main() {
  /* 1. Number 與 String 類型之間的轉換 */

1.String類型轉換成Number類型  parse() 

Number類型轉換成String  toString()
String類型轉換成Number類型  parse()

整數數值
String str = '123';

int myNum = int.parse(str);

print(myNum);
print(myNum is int); //黃正常 因為他覺得是廢話


小數數值
String price = '123';

double myNum = double.parse(price);

print(myNum+77); // 可以加了 因為變數值
print(myNum is double); //黃正常 因為他覺得是廢話


空字串轉換 會報錯
String price = '';

double myNum = double.parse(price);

print(myNum);
print(myNum is double); //黃正常 因為他覺得是廢話


try....catch 捕捉與處理錯誤 防止整個程式直接爆掉
String price = ' ';

try {
double myNum = double.parse(price);

print(myNum);
print(myNum is double); //黃正常 因為他覺得是廢話
} catch (err) { 
//如果錯誤就執行
print(0);  //輸出
}


2.Number類型轉換成String  toString()

int myNum = 123;
String str = myNum.toString();

print(str is String); //黃正常 因為他覺得是廢話


  /* 2.其他類型轉換成Booleans類型 */

isEmpty:判斷字符串是否為空

String name = "Ethan";

if (name.isEmpty) {
//如果name為空就執行
print("沒名字");
} else {
//如果name不為空就執行
print("有名字");
}


      /* 補充 */
int? myNum ;

if (myNum == null) {
print("沒有值");
} else {
print("有值");
}

double myNum = 0 / 0;
print(myNum); //NaN 
}
```