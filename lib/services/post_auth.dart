import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:delivery/model/signin_model.dart';
import 'package:delivery/view/pages/utls/bottom_navbar.dart';
import 'package:delivery/view/pages/utls/otpscreen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth {
  final String url = "http://10.0.2.2:8000/api/user/";

  Map<String, String> headers = {
    'Content-Type': 'application/json',
  };

  signAuth(SignInModel signin, BuildContext context) async {
    try {
      final responce = await http.post(Uri.parse(url),
          headers: headers,
          body: jsonEncode(
            signin.toJson(),
          ));
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        log('success');
        // ignore: use_build_context_synchronously
        Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => OtpScreen(model: signin)));
        http.post(Uri.parse("${url}send_otp"));
      } else {
        log(responce.body.toString());
      }
    } on HttpException catch (e) {
      log(e.message);
    }
  }

  //==================otp verify =============//

  verifyOtp(SignInModel signin, String otp, BuildContext context) async {
    try {
      Map body = signin.toJson();
      body["otp"] = otp;
      final responce = await http.post(Uri.parse("${url}verify_otp"),
          headers: headers, body: body);
      if (responce.statusCode == 200 || responce.statusCode == 201) {
        // ignore: use_build_context_synchronously
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const NavigationPage()));
        log('success');
      } else {
        log(responce.body.toString());
      }
    } on HttpException catch (e) {
      log(e.message);
    }
  }
}
