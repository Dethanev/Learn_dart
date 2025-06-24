void main() {
  //  == | != | > | < | >= | <= |

  int a = 5;
  int b = 3;

  print(a == b); //判斷是否相等
  print(a != b); //判斷是否不等
  print(a > b); //判斷是否大於
  print(a < b); //判斷是否小於
  print(a >= b); //判斷是否大於等於
  print(a <= b); //判斷是否小於等於

  if (a > b) {
    print('a大於b');
  } else {
    print('a小於b');
  }
}
