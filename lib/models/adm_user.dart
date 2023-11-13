import 'dart:convert';

class AdmUser {
  int id;
  String name;
  String email;
  String password;
  String profile;
  AdmUser({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.profile,
  });
  // SERIALIZAÇÃO
  // Passo 1
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'password': password,
      'profile': profile
    };
    return map;
  }

  // Passo 2
  String toJson() => jsonEncode(toMap());

  //DESSERIALIZAÇÃO
  // Passo 2
  factory AdmUser.fromMap(Map<String, dynamic> map) {
    return AdmUser(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
      profile: map['profile'],
    );
  }
  // Passo 1
  factory AdmUser.fromJson(String json) => jsonDecode(json);
}
