// 定義 List陣列(集合) 的方式

void main() {
  // // 1 第一種定義List的方式

  var li = ["Ethan", 20, true];

  print(li); //[Ethan, 20, true]
  print("$li \n"); //[Ethan, 20, true]

  print(li.length); //3

  print(li[0]); //Ethan
  print(li[1]); //20
  print(li[2]); //true

  // // 2 第二種定義List的指定類型方式

  var l1 = <String>["Ethan", "Chris"];
  var l2 = <int>[12, 34];

  print(l1);
  print(l2);
  print("$l1 $l2");

  // /*
  //   3 第三種定義List的方式 增加數據 
  //   通過[]創建集合它的容量可以變化
  // */

  // var l4 = [];

  // print(l4);  //[]
  // print(l4.length); //0

  // l4.add("Ethan");
  // l4.add("Chris");
  // l4.add(100);

  // print(l4);  //[Ethan, Chris, 100]
  // print(l4.length); //3

  // var l5 = ["Ethan", 20, true];
  // l5.add("Chris");

  // print(l5);  //[Ethan, 20, true, Chris]

  // //  4 第四種定義List的方式

  // // var l6=new List(); //新版本不能用

  // //創建一個固定長度的集合
  // // 用" "只能用字串類型 用整數只能是整數數值類型 用小數只能數值型別
  // var l6 = List.filled(2, " "); 
  // print(l6);
  // print(l6[0]);

  // l6[0] = "張三"; //修改集合內容
  // l6[1] = "李四"; //修改集合內容

  // print("$l6"); //[張三, 李四]

  // l6.add("老五"); //錯誤不能增加 只能修改
  // print(l6);

  // // 通過List.filled創建的集合長度是固定的

  // var l6 = List.filled(2, " ");
  // print(l6.length);

  // l6.length = 0; //修改集合的長度 報錯 //可以改小不能改大
  // print(l6.length);

  // var l7 =<String>["張三", "李四"];
  // print(l7.length); //2

  // l7.length = 1; //可以改變
  // print(l7); //[張三]

  // var l8 = List<String>.filled(2, " "); //只能字串型別
  // print(l8);  //[ ,  ]
  // print(l8.length); //2

  // var l9 = List<int>.filled(2, 1); //只能整數型別
  // print(l9);  //[1, 1]
  // print(l9.length); //2

  // var l10 = List<double>.filled(2, 2.2); //只能數值型別
  // print(l10); //[2.2, 2.2]
  // print(l10.length);  //2
}
