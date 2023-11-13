import 'dart:convert';

class User {
  int id;
  String name;
  String email;
  String password;
  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
  });

  // SERIALIZAÇÃO
  // Passo 1
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password
    };
    return map;
  }

  // Passo 2
  String toJson() => jsonEncode(toMap());

  //DESSERALIZAÇÃO
  // Passo 2
  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      email: map['email'] ?? '',
      password: map['passsword'] ?? '',
    );
  }
  // Passo 1
  factory User.fromJson(String json) => User.fromMap(jsonDecode(json));
}
