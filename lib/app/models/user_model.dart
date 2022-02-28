import 'dart:convert';

class UserModel {
  final int id;
  final String name;
  final String email;
  final String password;

  UserModel(this.id, this.name, this.email, this.password);

  Map<String, dynamic> toMap(){
    return{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  UserModel.fromMap(Map<String,dynamic> map) :
  id = map['id'],
  name = map['name'],
  email = map['email'],
  password = map['password'];
  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source));
}
