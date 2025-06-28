/*
  內置方法/函式:
    print();

  自定義方法:
    自定義方法的基本格式：

    返回類型  函式名稱 (參數1, 參數2, ...) {
        函式體
        return 返回值;
    }
*/
/* 這裡是全區域宣告 */
void printInfo() {
  // 叫printInfo()函式 就會輸出 我是一個自訂義方法
  print('我是一個自訂義方法'); // 輸出 我是一個自訂義方法
}

int getNum() {
  // 叫getNum函式 就會回傳值
  int myNum = 123; // 給值
  return myNum; // 回傳值而已 沒有輸出
}

String printUserInfo() {
  // return 123; // 會報錯 因為String只能用於字串
  return 'Hello World!';
}

List getList() {
  return ['111', '222', '333'];
}

void main() {
  printInfo(); // 我是一個自訂義方法 // 他function本身就有print 所以不用用print包起來

  print(getNum()); // 123

  print(printUserInfo()); // Hello World!

  print(getList()); // [111, 222, 333]

/* 演示aaa function 在main function作用域限制  */
  void xxx() {
    void aaa() {
      print('aaa');
    }
    aaa();
  }

  // aaa(); // 叫不出來 因為有區域限制
  xxx();  // aaa // 這裡就可以叫出來
}