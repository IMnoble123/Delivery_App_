class SignInModel {
  SignInModel({
    required this.username,
    required this.email,
    required this.mobile,
    required this.password,
  });


  String username;
  String email;
  String mobile;
  String password;

  factory SignInModel.fromJson(Map<String, dynamic> json) => SignInModel(
        username: json["username"],
        email: json["email"],
        mobile: json["mobile"],
       password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
        "email": email,
        "mobile": mobile,
        "password": password,
      };
}
