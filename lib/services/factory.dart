import 'package:dio/dio.dart';

class Factory {
  static Dio createDio() {

    Map<String, String> headers = {
      'Content-Type': 'application/json;charset=UTF-8',
      'Charset': 'utf-8'
    };

    return Dio(
      BaseOptions(
        connectTimeout: 10000,
        receiveTimeout: 10000,
        baseUrl: "http://192.168.1.180:3000/",
        headers: headers
      )
    );
  }
}