import 'package:delivery/controller/otp_controller.dart';
import 'package:delivery/model/signin_model.dart';
import 'package:delivery/view/pages/utls/size_config.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:provider/provider.dart';

class OtpScreen extends StatelessWidget {
  final SignInModel model;
  const OtpScreen({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: OTPTextField(
                controller: context.watch<VerifyOtpProvider>().otpController,
                length: 6,
                width: MediaQuery.of(context).size.width,
                textFieldAlignment: MainAxisAlignment.spaceAround,
                fieldWidth: 45,
                fieldStyle: FieldStyle.underline,
                otpFieldStyle: OtpFieldStyle(borderColor: Colors.black),
                outlineBorderRadius: 15,
                style: const TextStyle(fontSize: 17),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(70),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<VerifyOtpProvider>().otpValidation(model,context);
                },
                child: const Text("Submit"))
          ],
        ));
  }
}
