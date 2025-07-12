/* 
Dart中支援以下資料型別: 
 
    常用資料型別: 

    Numbers(數值)
      int 
      double 

    Strings(字串)
      String 

    Booleans(布林)
      bool 

    List(陣列) 
      在Dart中，陣列是列表物件，所以大多數人只是稱它們為列表

    Maps(字典) 
      通常來說，Map 是一個鍵值對相關的物件。鍵和值可以是任何類型的物件。每個鍵只出現一次

    專案中用不到的資料型別: Runes Symbols

    Rune 是 UTF-32 編碼的字串。它可以透過文字轉換成符號表情或者代表特定的文字。 

    main() {
      var clapping = '\u{1f44f}';

      print(clapping); 
      print(clapping.codeUnits); 
      print(clapping.runes.toList()); 

        Runes input = new Runes(
        '\u2665 \u{1f605} \u{1f60e} \u{1f47b} \u{1f596} \u{1f44d}'); 
        print(new String.fromCharCodes(input)); 
    }
    
    Symbol 物件表示在 Dart 程式中宣告的運算子或識別符。你可能永遠不需要使用符號，但它們
    在 Dart 中是用 # 開頭來表示，入門階段不需要了解這東西，可能永遠也用不上。
*/