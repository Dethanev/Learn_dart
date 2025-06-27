/*
映射（Maps）是無序的鍵值對：

  常用屬性:
    keys             獲取所有的 key 值  (鑰匙碼)
    values           獲取所有的 value 值  (寶藏)
    isEmpty          是否為空
    isNotEmpty       是否不為空

  常用方法:
    remove(key)      刪除指定 key 的數據
    addAll({...})    合併映射，給映射內增加屬性
    containsValue    查看映射內的值，返回 true / false
    forEach          遍歷
    map              映射轉換
    where            過濾（回傳符合條件的鍵值對）
    any              是否有任一項符合條件
    every            是否所有項都符合條件
*/
void main() {
/* 基本應用 */

  Map<String, dynamic> person = {
    "name": "張三",
    "age": 20
  };
  var m = new Map();

  m["name"] = "李四";

  print(person);  // {name: 張三, age: 20}
  print(m); // {name: 李四}

/* 常用屬性: */

    // Map<String, dynamic> person = {
    //   "name": "張三",
    //   "age": "20",
    //   "sex": "男"
    // };

  /* keys values */
    // print(person.keys); // 只顯示前面鑰匙碼 (name, age)
    // print(person.keys.toList()); // 只顯示前面鑰匙碼 [name, age]
    // print(person.values.toList()); // 開啟鑰匙後的寶藏
    
  /* isEmpty isNotEmpty */
    // print(person.isEmpty);  // false
    // print(person.isNotEmpty); // true

/* 常用方法: */

    // Map<String, dynamic> person = {
    //   "name": "張三",
    //   "age": "20",
    //   "sex": "男"
    // };
  /* addAll */
    // person.addAll({
    //   "work": ['敲代碼', '送外賣'],
    //   "height":160
    // });
    // print(person);

  /* remove */
    // person.remove("sex");
    // print(person);  // {name: 張三, age: 20}
    // print(person.remove("sex")); // 不能因為方便 就這樣用 只會輸出你刪掉的內容

  /* containsValue */
    // print(person.containsValue('張三'));  // 看Map是否有這個值 true 有值

}
