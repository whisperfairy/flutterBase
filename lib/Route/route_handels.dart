/*
 * fluro
 * Created by Yakka
 * https://theyakka.com
 *
 * Copyright (c) 2018 Yakka, LLC. All rights reserved.
 * See LICENSE for distribution and usage details.
 */



import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/Counter_Page.dart';

//设置replace 为true 每次handle重复刷新

var rootHandler = Handler(handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
  return CounterPage();
});