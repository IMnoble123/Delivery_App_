import 'dart:io';

import 'package:delivery/model/signin_model.dart';
import 'package:http/http.dart' as http;

class Auth {
  signAuth(SignInModel signin) async {
    try {
      final responce = await http.post(
          Uri.parse(
            'http://127.0.0.1:8000/api/user/',
          ),
          body: signin.toJson());
      if (responce.statusCode == 200) {
        print('success');
      }
    }on HttpException catch (e) {
      print(e.message);
    }
  }
}
