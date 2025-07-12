
abstract class Db { // 當作接口  接口: 約定 規範
  late String uri;      // 數據庫的連接地址
  add(String data);
  save();
  delete();
}

class Mssql implements Db {
  @override
  late String uri;

  @override
  add(data) {
    print('這是mssql的add方法' + data);
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

class Mysql implements Db {
  @override
  late String uri;

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

void main() {
  Mysql mysql = Mysql('xxxxxx');
  mysql.add('123123123');

  Mssql mssql = Mssql();
  mssql.uri = '127.0.0.1';
  mssql.add("增加的數據");
}
