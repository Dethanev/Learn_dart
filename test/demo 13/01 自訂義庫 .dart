import 'lib/Animal.dart';

void main() {
  
  Animal A = Animal('小黑狗', 20);

  print(A.getName()); // 小黑狗
  A.printInfo(); // 小黑狗 ---- 20
}
