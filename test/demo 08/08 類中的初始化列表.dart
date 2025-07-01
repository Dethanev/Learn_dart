// Dart 中我們也可以在建構函式執行之前，先初始化實例變數（初始化列表）

class Rect {
  int height;
  int width;

  // 初始化列表：在建構子執行前，先給 height 與 width 初始值
  Rect()
      : height = 2,
        width = 10 {
    print("${this.height}----${this.width}");
  }

  getArea() {
    return this.height * this.width;
  }
}

void main() {
  Rect r = new Rect();  // 2----10
  print(r.getArea()); // 20
}
