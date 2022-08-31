import 'package:delivery/view/pages/utls/size_config.dart';
import 'package:delivery/view/pages/widgets/screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(body: Screen());
  }
}
