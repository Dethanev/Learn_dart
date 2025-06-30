void main() {
  /* ++ 遞增 */

    // int LY = 24;
    // LY++; // LY = 24 + 1
    // print(LY); //25 不能用print(LY++);

  /* ++ 遞增放前後的重要性 */

    /*++放後*/

      // int a = 10;
      // int b = a++;//這行等於 先給值在加
      // //int b = a;
      // //a = a + 1;

      // print(a); //11
      // print(b); //10

    /*++放前*/

      // int a = 10;
      // int b = ++a;//這行等於 先加在給值
      // //a = a + 1;
      // //int b = a;

      // print(a); // 11
      // print(b); // 11

  /* -- 遞減 */

  // int LY = 24;
  // LY--; // LY = 24 - 1
  // print(LY); //23 不能用print(LY--);

  /* -- 遞減放前後的重要性 */

    /*--放後*/

      // int a = 10;
      // int b = a--;//這行等於 先給值在減
      // //int b = a;
      // //a = a - 1;

      // print(a); //9
      // print(b); //10

    /*--放前*/

      // int a = 10;
      // int b = --a;//這行等於 先減在給值
      // //a = a - 1;
      // //int b = a;

      // print(a); // 9
      // print(b); // 9

}
