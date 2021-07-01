import 'package:json_annotation/json_annotation.dart';
part 'UserModel.g.dart';
@JsonSerializable()
class User {
  // Tell json_serializable that "registration_date_millis" should be
  // /// mapped to this property.
  // @JsonKey(name: 'registration_date_millis')
  // final int registrationDateMillis;
  /// Tell json_serializable to use "defaultValue" if the JSON doesn't
  /// contain this key or if the value is `null`.
  // @JsonKey(defaultValue: false)
  // final bool isAdult;

  /// When `true` tell json_serializable that JSON must contain the key,
  /// If the key doesn't exist, an exception is thrown.
  // @JsonKey(required: true)
  // final String id;

  /// When `true` tell json_serializable that generated code should
  /// ignore this field completely.
  // @JsonKey(ignore: true)
  // final String verificationCode;
  final String name;
  @JsonKey(defaultValue: '353486474@qq.com')
  final String email;

  User(this.name, this.email);
  /// A necessary factory constructor for creating a new User instance
  /// from a map. Pass the map to the generated `_$UserFromJson()` constructor.
  /// The constructor is named after the source class, in this case, User.
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  /// `toJson` is the convention for a class to declare support for serialization
  /// to JSON. The implementation simply calls the private, generated
  /// helper method `_$UserToJson`.
  Map<String, dynamic> toJson() => _$UserToJson(this);
}