void main() {
  // 1. if else switch case

  /* if else */

  bool flag = true;

  if (flag == true) {
    // if 等於如果
    print("true");
  } else {
    // else 等於否則 什麼都沒有就會在這執行
    print("false");
  }

  //用 if else 判斷一個人的成績
  //如果大於60顯示 及格 |如果大於70顯示 良好 | 如果大於90顯示 優秀

  int score = 80;

  if (score > 90) {
    // if 等於如果
    print('優秀');
  } else if (score > 70) {
    // else if 等於否則如果
    print('良好'); //輸出
  } else if (score > 60) {
    print('及格');
  } else {
    // else 等於否則 什麼都沒有就會在這執行
    print('不及格');
  }

  /* switch case */

  //用 switch case 判斷一個人的成績
  //如果大於60顯示 及格 |如果大於70顯示 良好 | 如果大於90顯示 優秀

  // int score = 80;

  // switch (score) {
  //   case > 90:
  //     print('優秀');
  //     break; //加break是離開的意思 怕繼續執行到下面的輸出
  //   case > 70:
  //     print('良好'); //輸出
  //     break;
  //   case > 60:
  //     print('及格');
  //     break;
  //   default:  //什麼都沒有就會跑到 default 執行
  //     print('不及格');
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
}
