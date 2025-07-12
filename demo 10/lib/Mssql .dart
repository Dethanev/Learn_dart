import 'Db .dart';

class Mssql implements Db {
  @override
  String? uri;

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
