import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Route/route_handels.dart';


class Routes {
  static String root = "/"; //login
  static String taskListPageRoute = "/Tasks";


  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
          print("ROUTE WAS NOT FOUND !!!");
          return;
        });
    router.define(root, handler: rootHandler);

  }
}
