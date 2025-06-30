void main(){

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
  /* 函式間調用 */
    // bool isEvenNumber(int n) {
    //   if (n % 2 == 0) {
    //     return true;
    //   } else {
    //     return false;
    //   }
    // }

    // void printNum(int x) {
    //   for (int i = 1; i <= x; i++) {
    //     if(isEvenNumber(i)){  // 傳入i值給isEvenNumber判斷是否為偶數
    //       print(i);
    //     }
    //   }
    // }

    // printNum(19); // 輸出 2-18
  
}
