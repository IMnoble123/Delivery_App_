
import 'package:delivery/view/pages/food_page.dart';
import 'package:delivery/view/pages/spalish_screen.dart';
import 'package:delivery/view/pages/start_up_page.dart';
import 'package:delivery/view/pages/widgets/cateory/food.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Delivery App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const StaterPage(),
    );
  }
}

