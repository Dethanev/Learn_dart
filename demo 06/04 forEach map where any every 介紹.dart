/*
  forEach : 每一項都做「副作用」，不需要回傳 (example:輸出打印東西)
  map     : 每一項「轉成」新東西，會回傳新清單
  where   : 每一項「篩選」出來，會回傳新清單
  any     : 只要有一個符合，就 true
  every   : 所有都要符合，才 true
 */
void main(){
/* List */
  /* 一般的 */
    List myList = ['香蕉', '蘋果', '芭樂'];

    for (int i = 0; i < myList.length; i++) {
      print(myList[i]);
    }

  /* 更簡潔 */
    List MyList = ['香蕉', '蘋果', '芭樂'];

    // 變數宣告盡量用var 因為這個變數item經常不是單單一個型態
    for (var item in MyList) { // item 是自己取的變數 在myList 裡面++
      print(item); // 就會輸出 香蕉 蘋果 芭樂
    }

  /* forEach */
    //題目: 輸出 myList 裡面的每個東西
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
  /* forEach */

  // var s = new Set();

  // s.addAll([1, 22, 333]);
  // s.forEach((value) => print(value)); // 單一行一個動作就可以用 => 1.還有一行的話 就不用大括號括起來 2.print後面就不用加;分號

/* Map */
  /* forEach */

  // Map<String, dynamic> person = {"name": "張三", "age": 20};

  // person.forEach((keys, value) { // Map 就要兩個參數
  //   print("$keys----$value");
  // });


}