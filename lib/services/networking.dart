import 'dart:convert';
import 'package:dio/dio.dart';

class NetworkHelper {
  NetworkHelper(this.url);
  final String url;
  Future getData() async {
    var dio = Dio();
    try {
      Response response = await dio.get(url);
      Map data = jsonDecode(response.toString());
      return data;
    } catch (e) {
      print(e);
    }
  }
}
