import 'package:delivery/model/signin_model.dart';
import 'package:delivery/services/post_auth.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';

class VerifyOtpProvider with ChangeNotifier {
  OtpFieldController otpController = OtpFieldController();

  otpValidation(SignInModel body, BuildContext context) {
    Auth().verifyOtp(body, otpController.toString(), context);
  }
}
