import 'package:delivery/controller/login_pagecontroller.dart';
import 'package:delivery/view/pages/utls/bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class LoginButtonPage extends StatelessWidget {
  LoginButtonPage({Key? key}) : super(key: key);
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // if (controller.formkey.currentState!.validate()) {
        //   return;
        // }
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => const NavigationPage()));
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: const Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        child: const Text(
          'Login',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}