/*
required 關鍵詞：

  最開始 @required 是註解

  現在它已經作為內置修飾符。

  主要用於允許根據需要標記任何命名參數（函數或類），使得它們不為空。因為可選參數中必須有個 required。
*/

String printUserInfo(String username, {int age = 10, String sex= '男'}) {
  return "名字:$username--性別:$sex--年齡:$age";
}

String printInfo(String username, {required int age, required String sex}) {
  return "名字:$username--性別:$sex--年齡:$age";
}

void main() {
  print(printUserInfo('張三')); // 名字:張三--性別:男--年齡:10

  print(printUserInfo('Ethan', age: 18, sex: '未知')); // 名字:Ethan--性別:未知--年齡:18

/* age 和 sex 必填 */
  print(printInfo('Ethan', age: 18, sex: '未知')); // 名字:Ethan--性別:未知--年齡:18
}
