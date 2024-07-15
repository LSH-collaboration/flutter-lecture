import 'dart:convert';
import 'dart:math';

class UserModel {
  UserModel({required this.name, required this.age});
  String name = "";
  int age = 0;

  factory UserModel.fromJson(Map<String, String> json) {
    return UserModel(name: json['name']!, age: json['age'] as int);
  }
}

class Singleton {
  Singleton._privateConstructor();
  static final Singleton _instance = Singleton._privateConstructor();
  int val = Random().nextInt(1000);

  factory Singleton() {
    return _instance;
  }
}

class NonSingleton {
  int val = Random().nextInt(1000);
}

class Config {}

main() {
  final obj1 = Singleton();
  final obj2 = Singleton();

  final json_data = Map<String, String>();
  final user = UserModel.fromJson(json_data);

  print(obj1.val);
  print(obj2.val);
}
