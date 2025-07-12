/*

通俗理解: 泛型就是解決 類 接口 方法的重複性 以及對不特並數據費型的支持(類型校驗)

*/

/*同時之返回 string類型 和int類型 (代碼太攏長)*/

// String getData1(String value) {
//   return value;
// }

// int getData2(int value) {
//   return value;
// }

/* 同時返回String類型和number類型 不指定類型可以解決這個問題 */

// getData(value) {
//   return value;
// }

/* 
  不指定類型放棄了類型檢查 我悶現在想實現的是傳入什麼 返回什麼 
  比如傳入number類型必須返回number
*/

// 也可以 getData<T>(T value){}
T getData<T>(T value) {
  return value;
}

void main() {
  // print(getData(19));

  // print(getData('Ethan'));

  // getData<String>(123); 會錯因為指定String類型了
  getData<int>(123);
  
  getData<String>('Lilly');
}
