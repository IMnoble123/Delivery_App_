import 'package:flutter/material.dart';

class BackbuttonPage extends StatelessWidget {
  const BackbuttonPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ) {
    return InkWell(
    onTap: () {},
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 0, top: 10, bottom: 10),
            child: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.black,
            ),
          ),
          const Text(
            'Back',
            style: TextStyle(
                fontSize: 12, color: Colors.black, fontWeight: FontWeight.w500),
          )
        ],
      ),
    ),
  );
  }
}