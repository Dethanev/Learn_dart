void main(){
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

  /* 通過函式的遞歸 求1-100的和 */

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
}