/*
Dart 中的泛型接口：

  實現數據緩存的功能：有文件緩存，和內存緩存。內存緩存和文件緩存按照接口約束實現。

  1、定義一個泛型接口，約束實現它的子類必須有 getByKey(key) 和 setByKey(key, value)

  2、要求 setByKey 的時候的 value 的類型和實例化子類的時候指定的類型一致
*/

/* 官方例子 */
  // abstract class ObjectCache {
  //   getByKey(String key);
  //   void setByKey(String key, Object value);
  // }

  // abstract class StringCache {
  //   getByKey(String key);
  //   void setByKey(String key, Object value);
  // }

  // abstract class Cache <T>{
  //   getByKey<T>(key);
  //   void setByKey<T>( key,  value);
  // }

/* 實作 */
abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key, T value); // T類型在括號裡就不用加<>
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    throw UnimplementedError();
  }

  @override
  void setByKey(String key,T value) {
    print('我是文件緩存 把Key=${key} value=${value}的數據寫入到了文件中');
  }
}

class MemoryCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    throw UnimplementedError();
  }

  @override
  void setByKey(String key, T value) {
    print('我是內存緩存 把Key=${key} value=${value}的數據寫入到了內存中');
  }

}

void main() {

  MemoryCache M1 = MemoryCache<String>();
  // M.setByKey('index', 789); 會報錯
  M1.setByKey('index', '首頁數據');

  MemoryCache M2 = MemoryCache<Map>();
  // M.setByKey('index', '首頁數據'); 會報錯
  M2.setByKey('index', {'name':'Ethan',"age":20});

}
