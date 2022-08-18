import 'package:flutter/material.dart';

class TextEntryField extends StatelessWidget {
  const TextEntryField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        TextFormField(
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
  );
  }
}