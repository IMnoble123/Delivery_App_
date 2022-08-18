import 'dart:math';

import 'package:delivery/view/pages/utls/painter.dart';
import 'package:flutter/material.dart';

class BezierContainer  extends StatelessWidget {
  const BezierContainer ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return SizedBox(
      child: Transform.rotate(
        angle: -pi/3.5,
        child: ClipPath(
          clipper: ClipPainter(),
          child: Container(
            height: MediaQuery.of(context).size.height*.5,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors:[
                  Color(0xfffbb448),
                  Color(0xffe46b10),
                ]
                ),
            ),
          ),
        ),
        ),
    );
  }
}