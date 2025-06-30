void main() {
/* 1. 打印出0~50的所有偶數 */

  //while

  int i = 0;

  while (i <= 50) {
    print(i);
    i += 2;
  }

  // do while

  // int j = 0;

  // do {
  //   print(j); // 變成 j += 2 ; 執行結過會不一樣 
  //   j += 2;   // 變成 print(j); 執行結過會不一樣 會變從2開始到52
  // } while (j <= 50);

  
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

  // while

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
  //   print("執行代碼"); // 會執行
  // } while (j < 2);
}
