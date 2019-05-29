import 'http_util.dart';

class NetUtil {
  static Future get(String url, {Map<String, dynamic> params}) async {
    var response = await dio.get(url, queryParameters: params);
    return response.data;
  }
}
