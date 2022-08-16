import 'package:delivery/view/pages/home_page.dart';
import 'package:delivery/view/pages/second_signpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/Background.png'))),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 200),
              const Text(
                'Grub On Wheels',
                style: TextStyle(fontSize: 35, color: Colors.white, shadows: [
                  BoxShadow(
                      blurRadius: 5,
                      color: Color.fromARGB(255, 125, 87, 46),
                      offset: Offset(3, 3))
                ]),
              ),
              SizedBox(
                height: 300,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        cursorColor: Colors.grey.shade600,
                        decoration: const InputDecoration(
                          labelStyle:
                              TextStyle(color: Colors.white, fontSize: 13),
                          labelText: 'Username/Email',
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        obscureText: _isObscure,
                        cursorColor: Colors.grey.shade600,
                        decoration: InputDecoration(
                          labelStyle: const TextStyle(
                              color: Colors.white, fontSize: 13),
                          labelText: 'password',
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObscure = !_isObscure;
                                });
                              },
                              icon: Icon(
                                  _isObscure
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey,
                                  size: 15)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (ctx) => const HomePage()));
                            },
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                            child: const Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            )),
                      ),
                    ),
                    // const Text('Sign in to Continue',style: TextStyle(color: Colors.white),),
                    // const Text('Grub On Wheels',
                    // style: TextStyle(fontSize: 40,color: Colors.white,
                    // shadows: [
                    //   BoxShadow(
                    //     blurRadius: 5,
                    //     color: Color.fromARGB(255, 125, 87, 46),
                    //     offset: Offset(3, 3)
                    //   )
                    // ]),
                    // ),
                    Column(
                      children: [
                        SignInButton(Buttons.Google,
                            text: 'Sign in with Google', onPressed: () {})
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: const [
                  Text(
                    'By signing in you are agreeing to our',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Text(
                    'Terms and  Privacy Policy',
                    style: TextStyle(color: Colors.grey),
                  ),
                  // const SizedBox(height: 5.0),
                  // TextButton(onPressed: (){}, child:const Text('Sign Up',
                  // style: TextStyle(color: Colors.white),))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'new here/',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (ctx) => const SignupPage()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white),
                      )),
                  const Text(
                    'now',
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
