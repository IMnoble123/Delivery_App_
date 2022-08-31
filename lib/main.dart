import 'package:delivery/controller/signupcontroller.dart';
import 'package:delivery/view/pages/start_up_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {

//  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
//     systemNavigationBarColor: Colors.transparent,
//     statusBarBrightness: Brightness.light,
//     statusBarColor: Colors.transparent,
//     statusBarIconBrightness: Brightness.light,
//     systemNavigationBarDividerColor: Colors.transparent,
//     systemNavigationBarIconBrightness: Brightness.light,
//   ));

  runApp(
    const MyApp()
    );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=>  SignUpProvider())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Delivery App',
        theme: ThemeData(
          primarySwatch: Colors.grey
        ),
        home: const StaterPage()
      ),
    );
  }
}

