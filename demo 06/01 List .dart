/*
List 裡面常用的屬性和方法：

  常用屬性:
    length          長度
    reversed        翻轉
    isEmpty         是否為空
    isNotEmpty      是否不為空

  常用方法:
    add             增加
    addAll          拼接數組
    indexOf         查找    傳入具體值
    remove          刪除    傳入具體值
    removeAt        刪除    傳入索引值
    fillRange       修改
    insert          插入    指定位置插入 (index, value)
    insertAll       插入    指定位置插入 List (index, list)
    toList          類型轉換    其他類型轉換成 List
    join            字串轉換    List 轉換成字串
    split           字串轉 List（其實是 String 方法）
    forEach         遍歷
    map             映射轉換
    where           過濾（回傳符合條件的鍵值對）
    any             是否有任一項符合條件
    every           是否所有項都符合條件
*/
void main(){

/* List 裡面的常用屬性 */

    List myList = ["Ethan", 'Chris', "LY"];

    print(myList); // [Ethan, Chris, LY]
  /* length isEmpty isNotEmpty */
    print(myList.length); // 3
    print(myList.isEmpty); // false
    print(myList.isNotEmpty); // true
  // /* reversed */
    print(myList.reversed); // (LY, Chris, Ethan) 對列表進行倒敘排序
    /*
    reversed 回傳的是 Iterable，不是 List 所以輸出才不是 中括號
    Iterable = 可看、可走訪，但不能直接改裡面的資料 現在初學知道這樣就好
    */
    List newMyList = myList.toList(); // Iterable 轉回 List 就可以修改
    print(newMyList); // [Ethan, Chris, LY]

/* List 裡面常用的方法 */

    // List myList = ["Ethan", 'Chris', "LY"];

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

    // List myList = ["Ethan", 'Chris', "LY"];

  // /* fillRange */
    // myList.fillRange(0, 2, 'aaa'); // 修改多個數據 0是開始 2是結尾 所以改到 0 1而已 改的內容'aaa'
  // /* insert */
    // myList.insert(1, 'aaa'); // 插入單個數據 在原本 Chris 的前面 插入'aaa'
  // /* insertAll */
    // myList.insertAll(1, ['aaa','bbb']);  // 插入多個數據 在原本 Chris 的前面 插入'aaa' 和 'bbb'
    
    // print(myList); // 開啟這裡測試

    // List myList = ["Ethan", 'Chris', "LY"];
  // /* join */
    // var str = myList.join('-'); //list 轉換成字符串

    // print(str); // Ethan-Chris-LY
    // print(str is String); // true 是String類型 可以用String 宣告
  // /* split */
    // String str = "Ethan- Chris- LY";
    // List list = str.split('-');

    // print(list); // [Ethan,  Chris,  LY]
    // print(list is List); // true 是List類型 可以用List 宣告

}