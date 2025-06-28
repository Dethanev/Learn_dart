/* 調用函式傳參 */ 
void main() {
/* 低效率 不可重複的程式碼 */

  /* 1. 1-100求和 */ 

    // int sum = 0;

    // for (int i = 1; i <= 100; i++) {
    //   sum += i;
    // }
    // print(sum);

  /* 2. 1-90求和 */

    // int sum = 0;

    // for (int i = 1; i <= 90; i++) {
    //   sum += i;
    // }
    // print(sum);

  /* 3. 1-60求和 */

    // int sum = 0;

    // for (int i = 1; i <= 60; i++) {
    //   sum += i;
    // }
    // print(sum);

/* 高效率 可重複的程式碼 */

  /* 1. 定義一個函式 求1到這個數的所有數的和 */

    int sumNum(int x) {
      // x 參數最好加上型別比較安全
      int sum = 0;

      for (int i = 1; i <= x; i++) {
        // 計算合的迴圈
        sum += i;
      }
      return sum; // 回傳和
    }

    print(sumNum(60)); // 1830 // 這裡的實際參數可以隨便改數字 就會算到該數字的和
    print(sumNum(90)); // 4095
    print(sumNum(100)); // 5050

  /* 2. 定義一個函式 然後打印用戶信息 */

    String printUserInfo(String username, int age) {
      return "名字: $username----年齡: $age";
    }

    print(printUserInfo('Ethan', 18));  // 名字: Ethan----年齡: 18

  /* 3. 定義一個可選參數的函式 */

    // String printUserInfo(String username, [int? age]) { // 加中括號就是不一定有參數 不知道有沒有值就要加? 用來宣告空型態 
    //   if(age!=null){  // 是否不等於空值
    //     return "名字: $username----年齡: $age";
    //   }
    //   return "名字: $username----年齡:*"; // 都沒有就回傳這個
    // }

    // print(printUserInfo('Ethan'));  // 名字: Ethan----年齡:*

  /* 4. 定義一個默認參數的函式 */

    // String printUserInfo(String username, [String? sex='男',int? age,]) { // 默認參數通常放前面 丟實際參數的時候 順序不要搞錯了
    //   if(age!=null){  // 是否不等於空值
    //     return "名字:$username--性別:$sex--年齡:$age";
    //   }
    //   return "名字:$username--性別:$sex--年齡:*"; // 都沒有就回傳這個
    // }

    // print(printUserInfo('Ethan'));  // 名字:Ethan--性別:男--年齡:*
    // print(printUserInfo('Ethan','女'));  // 名字:Ethan--性別:女--年齡:*
    // print(printUserInfo('Ethan','女',30));  // 名字:Ethan--性別:女--年齡:30

  /* 5. 定義一個命名參數的函式 */

    // String printUserInfo(String username,{ String? sex='男',int? age,}) { // 默認參數通常放前面 丟實際參數的時候 順序不要搞錯了
    //   if(age!=null){  // 是否不等於空值
    //     return "名字:$username--性別:$sex--年齡:$age";
    //   }
    //   return "名字:$username--性別:$sex--年齡:*"; // 都沒有就回傳這個
    // }

    // print(printUserInfo('Ethan',age:18,sex: '未知'));  // 名字:Ethan--性別:未知--年齡:18

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
} 