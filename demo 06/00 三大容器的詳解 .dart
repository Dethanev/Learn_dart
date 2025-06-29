/*
// ------------------------------
// Dart 三大常用資料結構總整理
  (這三個都可以說是集合 集合不是專有名詞 它就單單字面意思 資料集合在一起)
// ------------------------------

// ✅ List（陣列）(大陸人都說: 數組)
  // - 有順序，可重複
  // - 使用索引（從 0 開始）存取
  // - Dart 中 List 就是陣列，沒有 array 這種型別

  List<String> names = ['Ethan', 'Tom'];
  names.add('Alex');       // 加一筆
  print(names[0]);         // 印出第一筆（Ethan）

// ✅ Set（集合）
  // - 無順序，不可重複
  // - 自動幫你去掉重複元素
  // - 適合儲存不重複的標籤、分類、ID 等

  Set<String> tags = {'news', 'tech'};
  tags.add('news');        // 不會加第二次
  print(tags);             // {news, tech}

// ✅ Map（字典）
  // - 鍵值對（key → value）資料結構
  // - key 不可重複，value 可重複
  // - 常用來表示有欄位的資料（如 JSON）

  Map<String, int> scores = {
    'Ethan': 100,
    'Tom': 80,
  };

  scores['Alex'] = 95;     // 新增/修改一筆資料
  print(scores['Ethan']);  // 印出 100

// 🧠 台灣常用說法：
  // - List：陣列（或清單）
  // - Set：集合
  // - Map：字典（或鍵值對、對照表）


*/