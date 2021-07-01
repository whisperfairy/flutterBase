import 'package:date_format/date_format.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Utils {
  static String getDate() {
    var now = DateTime.now();

    String time =
        formatDate(now, [yyyy, '-', mm, '-', dd, ' ', HH, ':', nn, ':', ss]);
    return time;
  }

  static String getTime() {
    var now = new DateTime.now();
    return "${now.hour}:${now.minute}:${now.second}";
  }

  static int getTotalTime() {
    var now = new DateTime.now();
    return now.hour * 60 + now.minute;
  }

  static String getYMD() {
    var now = DateTime.now();

    String time = formatDate(now, [
      yyyy,
      '-',
      mm,
      '-',
      dd,
    ]);
    return time;
  }

  static String getDateAndTime(String time) {
    var now = DateTime.now();
    String time =
        formatDate(now, [yyyy, '-', mm, '-', dd, " ", HH, ":", mm, ":", ss]);
    return time;
  }

  static String getA() {
    var now = new DateTime.now();
    return "${now.year}-${now.month}-${now.day} ${now.hour}:${now.minute}";
  }

  /* 获取系统状态栏高度 */
  static double getSysStatsHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /* 获取屏幕宽度 */
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /* 获取屏幕高度 */
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
}

class HttpUtils {
  Dio dio = new Dio();

  constructor() {
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      print("\n================== 请求数据 ==========================");
      print("url = ${options.uri.toString()}");
      print("headers = ${options.headers}");
      print("params = ${options.data}");
    }, onResponse: (response, handler) {
      // Do something with response data
      print("\n================== 响应数据 ==========================");
      print("code = ${response.statusCode}");
      print("data = ${response.data}");
      print("\n");
      return handler.next(response); // continue
      // If you want to reject the request with a error message,
      // you can reject a `DioError` object eg: `handler.reject(dioError)`
    }, onError: (DioError e, handler) {
      print("\n================== 错误响应数据 ======================");
      print("type = ${e.type}");
      print("message = ${e.message}");
      print("stackTrace = ${e.error}");
      print("\n");

      return handler.next(e); //continue
      // If you want to resolve the request with some custom data，
      // you can resolve a `Response` object eg: `handler.resolve(response)`.
    }));
  }
}
