class UserModel {
  final String email;
  final String password;
  final String phone;

  UserModel({required this.email, required this.password, required this.phone});
  Map<String,dynamic> tojson()
  {
    return{
      "email" : email,
      "password" : password,
      "phone" : phone,
    };
  }
  factory UserModel.fromjson(json)
  {
    return UserModel(email:json["email"],password: json["password"],phone: json["phone"]);
  }
}