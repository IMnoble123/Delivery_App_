import 'package:delivery/view/pages/utls/custom_container.dart';
import 'package:delivery/view/pages/widgets/email_passwidget.dart';
import 'package:delivery/view/pages/widgets/last_text.dart';
import 'package:delivery/view/pages/widgets/login_button.dart';
import 'package:delivery/view/pages/widgets/title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            Positioned(
                top: -height * .15,
                right: -MediaQuery.of(context).size.width * .4,
                child: const BezierContainer()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: height * .2,
                    ),
                    // title(),
                    const TitlePage(),
                    const SizedBox(
                      height: 50,
                    ),
                    // emailPasswordWidget(),
                    const EmailPasswordWidgetPage(),
                    const SizedBox(height: 20),
                    // loginButton(),
                    const LoginButtonPage(),
                    Container(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        onTap: () {},
                        child: const Text(
                          'Forgot Password ?',
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    divider(),
                    SignInButton(Buttons.Google, onPressed: () {}),
                    SizedBox(
                      height: height * .055,
                    ),
                    // lasttext(),
                    const LasttextPage()
                  ],
                ),
              ),
            ),
            // Positioned(
            //   top: 40,
            //   left: 0,
            //   child: backButton(),
            // )
          ],
        ),
      ),
    );
  }
}

Widget divider() {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: const [
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
        ),
        Text('or'),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Divider(
              thickness: 1,
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
      ],
    ),
  );
}
