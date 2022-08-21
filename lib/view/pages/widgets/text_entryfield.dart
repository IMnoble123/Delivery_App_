import 'package:delivery/controller/login_pagecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class TextEntryField extends StatelessWidget {
  TextEntryField({Key? key}) : super(key: key);
  // final formkey = GlobalKey<FormState>();
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController passwordController = TextEditingController();
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Form(
        key: controller.formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: controller.emailController,
              keyboardType: TextInputType.emailAddress,
              // validator: (value) {
              //   if (value!.contains('@gmail.com')) {
              //     return "enter valid email";
              //   }
              //   return null;
              // },
              decoration: const InputDecoration(
                  labelText: "Email or mobile phone number",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true),
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller: controller.passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
              // validator: (value) {
              //   if (value!.isEmpty) {
              //     return "password required";
              //   }
              //   return null;
              // },
              decoration: const InputDecoration(
                  labelText: 'password',
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true),
            ),
          ],
        ),
      ),
    );
  }
}
