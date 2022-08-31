import 'package:delivery/model/signin_model.dart';
import 'package:delivery/services/post_auth.dart';
import 'package:delivery/view/pages/utls/bottom_navbar.dart';
import 'package:flutter/material.dart';

class SignUpProvider with ChangeNotifier {
  final formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final RegExp emailRegex = RegExp(r"@[a-zA-Z0-9]");

  final RegExp phoneRegex = RegExp(r'^[6-9]\d{9}$');

  String? nameValidater(String value) {
    if (value.isEmpty) {
      return "Username needed";
    }
    return null;
  }

  String? emailValidater(String value) {
    if (value.isEmpty) {
      return "Password required";
    } else if (emailRegex.hasMatch(value)) {
    }
    return null;
  }

  String? passwordValidater(String value) {
    if (value.isEmpty) {
      return "Password required";
    } else if (value.length < 6) {
      return "Character must me 6 or more";
    }
    return null;
  }

  String? phonenumberValidater(String value) {
    if (value.isEmpty) {
      return "Phonenumber required";
    } else if (value.isEmpty) {
      return "Enter valid number";
    }
    return null;
  }

  validation(BuildContext context) {
    if (formKey.currentState!.validate()) {
        authValidation();
      return Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx) => const NavigationPage()));
    
    } else {
      return;
    }
  }

  // ********fuction calling post menthod for clas auth*********//

  authValidation() {
    Auth().signAuth(SignInModel(
        username: nameController.text,
        email: emailController.text,
        password: passwordController.text));
  }
}
