void main() {
  //  == | != | > | < | >= | <= |

  int a = 5;
  int b = 3;

  print(a == b); //判斷是否相等 |false
  print(a != b); //判斷是否不等 |true
  print(a > b); //判斷是否大於  |true
  print(a < b); //判斷是否小於  |false
  print(a >= b); //判斷是否大於等於 |true
  print(a <= b); //判斷是否小於等於 |false

  if (a > b) {
    print('a大於b');
  } else {
    print('a小於b'); //小於所以輸出這個
  }
}
