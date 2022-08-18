import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return RichText(
    textAlign: TextAlign.center,
    text: const TextSpan(
        text: 'Grub',
        style: TextStyle(
            color: Color(0xffe46b10),
            fontSize: 30,
            fontWeight: FontWeight.w700),
        children: [
          TextSpan(
              text: 'On',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w700)),
          TextSpan(
              text: 'Wheels',
              style: TextStyle(
                  color: Color(0xffe46b10),
                  fontSize: 30,
                  fontWeight: FontWeight.w700))
        ]),
  );
  }
}