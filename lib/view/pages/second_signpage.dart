import 'package:delivery/view/pages/login_page.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const  SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final RegExp emailRegex =  RegExp(
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(bottom: 30),
        child: ListView(children: [
          const SizedBox(height: 100),
          const Padding(
            padding: EdgeInsets.only(left: 120, right: 90, top: 30),
            child: Text(
              'Create Account',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20, top: 30),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  textInput(hint: 'Username', icon: Icons.person),
                  const SizedBox(height: 8,),
                  textInput(hint: 'Email', icon: Icons.email_outlined),
                    const SizedBox(height: 8,),
                  textInput(
                    hint: 'Password',
                    icon: Icons.vpn_key,
                  ),
                    const SizedBox(height: 8,),
                  textInput(hint: 'Confirm password', icon: Icons.vpn_key),
                    const SizedBox(height: 12),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ElevatedButton(
                            onPressed: () {
                              // Navigator.of(context).push(MaterialPageRoute(
                              //     builder: (ctx) => const SuccesPage()));
                              // print('Account created succesfully');
                            },
                            style: ElevatedButton.styleFrom(
                                primary:
                                   const Color(0xfffbb448),),
                            child: const Text(
                              'REGISTER',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            )),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already a member ?',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) =>  LoginPage()));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.orange),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
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
        style: const TextStyle(fontSize: 15),
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(
            icon,
            size: 16,
          ),
        ),
      ),

    ),
  );
}
