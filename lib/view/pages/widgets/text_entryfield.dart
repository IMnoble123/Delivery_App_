
import 'package:flutter/material.dart';


class TextEntryField extends StatelessWidget {
  TextEntryField({Key? key}) : super(key: key);
  final formkey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Form(
        key: formkey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  labelText: "Email or mobile phone number",
                  labelStyle: TextStyle(fontSize: 15, color: Colors.grey),
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true),
            ),
            const SizedBox(height: 25),
            TextFormField(
              controller:passwordController,
              keyboardType: TextInputType.text,
              obscureText: true,
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
