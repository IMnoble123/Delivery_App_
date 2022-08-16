import 'package:delivery/view/pages/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        padding: const EdgeInsets.only(bottom: 30),
        child: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  textInput(hint: 'Username', icon: Icons.person),
                  textInput(hint: 'Email', icon: Icons.email_outlined),
                  textInput(
                    hint: 'Password',
                    icon: Icons.vpn_key,
                  ),
                  textInput(hint: 'Confirm password', icon: Icons.vpn_key),
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: SizedBox(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 1,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white),
                              child: const Text(
                                'REGISTER',
                                style:
                                    TextStyle(
                                    color: Colors.grey,
                                     fontSize: 15,
                                     ),
                              )),
                        ),
                      ),
                    ),
                  ),
                  // RichText(
                  //     text: const TextSpan(children: [
                  //   TextSpan(
                  //       text: 'Already a member ?',
                  //       style: TextStyle(color: Colors.black)),
                  //   TextSpan(
                  //       text: 'Login', style: TextStyle(color: Colors.orange))
                  // ]))
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already a member ?',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(
                                MaterialPageRoute(
                                builder: (ctx) => const SignIn()
                           ));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.orange),
                          ))
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}

Widget textInput({controller, hint, icon}) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    ),
  );
}
