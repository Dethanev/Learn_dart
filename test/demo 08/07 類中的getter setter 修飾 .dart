/*
🧠 Getter / Setter 簡易小抄
- getter：get xxx => 回傳值；看起來像屬性
- setter：set xxx(value) { ... }；看起來像賦值
- 呼叫：p.xxx / p.xxx = xxx，不要加小括號
- 若需要驗證或封裝邏輯 → 用 getter/setter
*/

/* getter */
  class Rect {
    num height;
    num width;

    Rect(this.height, this.width);

    get area{ // 用get關鍵字就不用加小括號
      return height * width;
    }
  }
  void main() {
    Rect r = new Rect(10, 2);

    print("面積:${r.area}");  // 面積:20  // 注意調用直接通過訪問屬性的方式訪問area
  }

/* setter */

  // class Rect {
  //   num height;
  //   num width;

  //   Rect(this.height, this.width);

  //   get area {
  //     return height * width;
  //   }

  //   set areaHight(value) {
  //     this.height = value;
  //   }
  // }

  // void main() {
  //   Rect r = new Rect(10, 20);

  //   print("面積:${r.area}");

  //   r.areaHight=6;

  //   print("面積:${r.area}");
  // }


/*  
補充:
✅ num 型別
- num 是 int & double 的父型別
- 適合不確定要整數還是小數時使用

✅ nullable 屬性
- num? 表示可以是 null
- 若需要非 null，必須先檢查或使用 `!`（非空斷言）

✅ 方法 area()
- 計算面積，若任一邊為 null，先回傳 0，避免錯誤
- 回傳 num?，讓結果可為 null 或數值

✅ 非空斷言運算子（!）
- height! 表示保證 height 不為 null，否則執行時會報錯
*/
