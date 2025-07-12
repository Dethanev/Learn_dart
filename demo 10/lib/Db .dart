
abstract class Db { // 當作接口  接口: 約定 規範
  String? uri;      // 數據庫的連接地址
  add(String data);
  save();
  delete();
}