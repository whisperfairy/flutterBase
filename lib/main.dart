import 'package:flutter/material.dart';
import 'package:flutter_app/page/Counter_Page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'component/appComponent.dart';
import 'utils/counterObserver.dart';

void main() {
  runApp(AppComponent());
  initState();
}
void initState() {
  Bloc.observer = SimpleBlocObserver();
}



