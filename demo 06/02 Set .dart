// Set 集合 (集合不是專有名詞 就單單字面意思 資料集合在一起)

// 用他最主要的功能就是去除陣列(數組)重複內容 

// Set 是沒有順序寫不能重複的集合 所以不能通過索引去獲取值

void main(){
/* Set 基本用法 */
  var s = new Set();

  s.add('Ethan');
  s.add('Chris');
  s.add('Ethan');

  print(s); // {Ethan, Chris} 不會重複打印
  print(s.toList());  // Set 變 List [Ethan, Chris] 沒有在一個'Ethan'是因為他只是單純轉換 Set 的s變數

/* 影片中教的刪除重複資訊做法 */
  // List myList = ['張三', '李四', '老五', '張三', '李四', '老五'];

  // var s = new Set();
  // s.addAll(['張三', '李四', '老五', '張三', '李四', '老五']);
  // print(s.toList());  // {張三, 李四, 老五}

/* 我的作法 簡單 快 清楚 */

  // List myList = ['張三', '李四', '老五', '張三', '李四', '老五'];

  // print(myList.toSet());  // {張三, 李四, 老五}

}