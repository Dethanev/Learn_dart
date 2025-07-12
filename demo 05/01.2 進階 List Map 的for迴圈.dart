void main(){
  // 5. 定義一個二維陣列 輸出裡面的內容
  
  /* List+Map+for 基本用法  */

    /* 重要補充 */
    // List               |   [1,2,3]    |   陣列
    // Map                |   {"a":1}    |   鍵值對
    // List<Map>          |   [{"a":1} , {"b":2}]  |陣列裡裝字典
    // Map<String, List>  |  {"a":[1,2,3]}  |  字典裡裝陣列

    List list = [
      // 外層是 List（列表）← 有兩個元素

      {
        // 第一個元素是 Map，有兩個 key
        "cate": "國內", // 分類名稱
        "news": [
          // news 是 List，裡面是三個 Map
          {"title": "國內新聞 1"},
          {"title": "國內新聞 2"},
          {"title": "國內新聞 3"},
        ]
      },

      {
        //第二個分類
        "cate": "國外",
        "news": [
          {"title": "國外新聞 1"},
          {"title": "國外新聞 2"},
          {"title": "國外新聞 3"},
        ]
      }
    ];

    int i, j;

    for (i = 0; i < list.length; i++) {
      print(list[i]["cate"]);  //等於幫我從list裡 一個一個取出元素 我要拿裡面的 ["cate"] 來用
      print("----------");
      for (j = 0; j < list[i]["news"].length; j++) {
        print(list[i]["news"][j]["title"]);  //等於幫我從list裡的 一個一個取出元素 拿裡面的["news"]裡面 一個一個取出元素["title"]  我要拿裡面的 ["title"] 來用
      }
      print(''); // Dart 裡一個print結束會自動換行 所以想換行就用空字串
    }


  /* 進階用法 更接地氣的Dart用法 */

    // List	Dart 裡的「陣列」容器（用 [] 表示）
    // Map<String, dynamic>	鍵是 String，值是任何型別
    /*
      List<Map<String, dynamic>>
      這是一個更精確的宣告方式
      一個「List（列表）」，裡面每個元素是一個「Map」；
      這個 Map 的 key 是 String，value 是 dynamic（可以是任何型別）;
    */
    // List<Map<String, dynamic>> list = [
    //   {
    //     "cate": "國內",
    //     "news": [
    //       {"title": "國內新聞 1"},
    //       {"title": "國內新聞 2"},
    //       {"title": "國內新聞 3"}
    //     ]
    //   },
    //   {
    //     "cate": "國外",
    //     "news": [
    //       {"title": "國外新聞 1"},
    //       {"title": "國外新聞 2"},
    //       {"title": "國外新聞 3"}
    //     ]
    //   }
    // ];
    // /* 
    //   for(Map<String,dynamic> category in list) 
    //   對 list 裡的每個元素做一次迴圈，元素變數叫 category (像是i的濃縮功能 也是變數可以隨便改name)
    //   這是 Dart 的 for-in 迴圈寫法，跟 C 語言的 for(i=0; i<n; i++)相比
    //   它更直覺、適合處理 List
    // */
    // for (Map<String,dynamic> category in list) {
    //   print(category["cate"]); //等於幫我從list裡 一個一個取出元素 命名為 category 我要拿裡面的 ["cate"] 來用
    //   print("----------");
    //   for (Map<String,dynamic> news in category["news"]) {
    //     print(news["title"]); //等於幫我從category["news"]裡 一個一個取出元素 命名為 news 我要拿裡面的 ["title"] 來用
    //   }
    //   print(''); // Dart 裡一個print結束會自動換行 所以想換行就用空字串
    // }

}