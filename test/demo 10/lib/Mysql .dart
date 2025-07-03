import "Db .dart";

class Mysql implements Db {
  @override
  String? uri;

  Mysql(this.uri);

  @override
  add(data) {
    print('這是mysql的add方法' + data);
  }

  @override
  delete() {
    throw UnimplementedError();
  }

  @override
  save() {
    throw UnimplementedError();
  }
}