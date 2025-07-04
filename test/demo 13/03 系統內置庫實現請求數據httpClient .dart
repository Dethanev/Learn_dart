import 'dart:io';
import 'dart:convert';

void main() async {
  var result = await getDataFromZhihuAPI();
  print(result);
}

/* api 接口: http://news-at.zhihu.com/api/3/stories/latest */ 
getDataFromZhihuAPI() async {

  /* 1. 創建 HttpClient 對象 */ 
  var httpClient = new HttpClient();

  /* 2. 創建 Uri 對象 */ 
  var uri = new Uri.http('news-at.zhihu.com', '/api/3/stories/latest');

  /*  3. 發起請求，等待請求 */
  var request = await httpClient.getUrl(uri);

  /* 4. 關閉請求，等待響應 */ 
  var response = await request.close();

  /*  5. 解析響應內容 */
  return await response.transform(utf8.decoder).join();
}
