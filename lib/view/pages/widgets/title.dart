import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  final double size;
  const TitlePage({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return RichText(
      textAlign: TextAlign.center,
      text:  TextSpan(
          text: 'Grub',
          style: TextStyle(
              color: const Color(0xffe46b10),
              fontSize: size,
              fontWeight: FontWeight.w700),
          children: [
            TextSpan(
                text: 'On',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size,
                    fontWeight: FontWeight.w700)),
            TextSpan(
                text: 'Wheels',
                style: TextStyle(
                    color: const Color(0xffe46b10),
                    fontSize: size,
                    fontWeight: FontWeight.w700))
          ]),
    );
  }
}
