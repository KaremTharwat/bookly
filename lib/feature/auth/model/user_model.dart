class UserModel {
  final String email;
  final String phone;

  UserModel({required this.email, required this.phone});

  factory UserModel.fromjson(json)
  {
    return UserModel(email:json["email"],phone: json["phone"]);
  }
}