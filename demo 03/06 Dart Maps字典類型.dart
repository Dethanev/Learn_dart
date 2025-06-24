// 定義 Maps (字典) 的方式

void main() {
  // 第一種定義 Maps (字典) 的方式
  // (第一種定義 先宣告規定好p這個Map 在叫)

  // var person = {
  //   "name": "張三",   //宣告字串 要用,隔開
  //   "age": 20,       //宣告數值  要用,隔開
  //   "work": ["工程師", "老師"] //最後一個不用隔
  // };

  // print(person);  //{name: 張三, age: 20, work: [工程師, 老師]}

  // print(person["name"]);  //張三
  // print(person["age"]); //20
  // print(person["work"]);  //[工程師, 老師]

  // print("$person"); //{name: 張三, age: 20, work: [工程師, 老師]}

  // 第二種定義 Maps (字典) 的方式
  // (第二種定義 先宣告有P這個Map 在加進去 才叫)

  // var p = new Map();

  // p["name"] = "李四";
  // p["age"] = 18;
  // p["work"] = "工程師";

  // print(p); //{name: 李四, age: 18, work: 工程師}

  // print(p["name"]); //李四
  // print(p["age"]);  //18
  // print(p["work"]); //工程師
}
