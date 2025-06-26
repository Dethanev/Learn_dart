/* Flutter 常用的 物件導向加迴圈 寫法(簡稱OOP)*/
  //class 正是 物件導向程式設計（OOP, Object-Oriented Programming） 的核心關鍵詞之一
  
class News {
  final String title;
  News(this.title);
}

class Category {
  final String cate;
  final List<News> news;

  Category(this.cate, this.news);
}

void main() {
  List<Category> list = [
    Category("國內", [
      News("國內新聞 1"),
      News("國內新聞 2"),
      News("國內新聞 3"),
    ]),
    Category("國外", [
      News("國外新聞 1"),
      News("國外新聞 2"),
      News("國外新聞 3"),
    ]),
  ];

  for (var category in list) {
    print(category.cate);
    print("----------");
    for (var news in category.news) {
      print(news.title);
    }
    print('');
  }
}
