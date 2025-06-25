void main() {
  /* 1. Number 與 String 類型之間的轉換 */

    // 1.String類型轉換成Number類型  parse() 

      //Number類型轉換成String  toString()
      //String類型轉換成Number類型  parse()

      // 整數數值
      // String str = '123';

      // int myNum = int.parse(str);

      // print(myNum);
      // print(myNum is int); //黃正常 因為他覺得是廢話


      // 小數數值
      // String price = '123';

      // double myNum = double.parse(price);

      // print(myNum+77); // 可以加了 因為變數值
      // print(myNum is double); //黃正常 因為他覺得是廢話


      // 空字串轉換 會報錯
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
      // //如果錯誤就執行
      //   print(0);  //輸出
      // }


    // 2.Number類型轉換成String  toString()

      // int myNum = 123;
      // String str = myNum.toString();

      // print(str is String); //黃正常 因為他覺得是廢話


  /* 2.其他類型轉換成Booleans類型 */

  


}
