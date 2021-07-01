import'dart:convert';

import 'package:flutter_app/domain/UserModel.dart';

class UserRepository{
   Future<User> login() async {
    String json =await fetchUserOrder();
    User user = User.fromJson(jsonDecode(json));

    return user;
}
  Future<String> fetchUserOrder() =>
      // Imagine that this function is
  // more complex and slow.
  Future.delayed(

    Duration(seconds: 2),
        () => json.encode({"name":"张三","age":13}),
  );
}
