/*
  語法格式：

    while (條件表達式) {
        // 迴圈體（當條件為 true 時反覆執行）
    }

    do {
        // 迴圈體（至少執行一次）
    } while (條件表達式); // ← 注意分號

    注意事項：

    1. do...while 結尾的分號不能忘記，否則語法錯誤。
    2. while 或 do...while 條件中使用的變數必須先初始化。
    3. 迴圈體中應設計能終止條件的邏輯，否則可能導致死迴圈。
    4. while 是「先判斷後執行」，do...while 是「先執行一次，再判斷」。
    5. 適用情境：
      - while：條件成立才執行（如：用戶尚未登入）。
      - do...while：至少執行一次（如：登入提示畫面至少顯示一次）。
*/
void main(){

// while 範例
  int i = 0;
  while (i < 5) {
    print(i); // 0 ~ 4
    i++;
  }


// do...while 範例
  int j = 0;
  do {
    print(j);  // 0 ~ 4
    j++;
  } while (j < 5);


// // 死循環 執行了電腦可能會卡 關不掉

//   int i = 0;
//   while (i < 10) {
//     print(i); // 會一直跑 0 
//     // 這要加 i++; 才不會死循環
//   }

}