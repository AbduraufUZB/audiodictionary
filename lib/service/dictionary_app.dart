import 'package:audiodictionary/core/constants/url_const.dart';
import 'package:dio/dio.dart';
class DictionaryService {
  static Future getDictionary() async {
    Response res = await Dio().get("${UrlConst.basicUrl}${UrlConst.extraUrl}");
    return res.data;
  }
}
