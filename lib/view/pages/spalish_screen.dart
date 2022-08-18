
import 'package:delivery/view/pages/start_up_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gohome(context);
    super.initState();
  }

  Future<void> gohome(BuildContext context) async {
  await Future.delayed(const Duration(seconds: 5));
  if (!mounted) return;
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (ctx) => const StaterPage()));
}

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/17431-package-delivery.json'),
          ],
        ),
      ),
    );
  }
}


