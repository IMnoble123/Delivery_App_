import 'package:delivery/controller/signupcontroller.dart';
import 'package:delivery/view/pages/login_page.dart';
import 'package:delivery/view/pages/widgets/google_signinbutton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

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
              key: context.watch<SignUpProvider>().formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  textInput(
                    hint: 'Username',
                    icon: Icons.person,
                    controller: context.watch<SignUpProvider>().nameController,
                    validator: (value) =>
                        context.read<SignUpProvider>().nameValidater(value!),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  textInput(
                    hint: 'Email',
                    icon: Icons.email_outlined,
                    controller: context.watch<SignUpProvider>().emailController,
                    validator: (value) =>
                        context.read<SignUpProvider>().emailValidater(value!),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  textInput(
                    hint: 'Password',
                    icon: Icons.vpn_key,
                    controller:
                        context.watch<SignUpProvider>().passwordController,
                    validator: (value) => context
                        .read<SignUpProvider>()
                        .passwordValidater(value!),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  textInput(
                    hint: 'phonenumber',
                    icon: Icons.phone,
                    controller: context.watch<SignUpProvider>().phoneController,
                    validator: (value) => context
                        .read<SignUpProvider>()
                        .phonenumberValidater(value!),
                  ),
                  const SizedBox(height: 12),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: SizedBox(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 1,
                        child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<SignUpProvider>()
                                  .validation(context);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xfffbb448),
                            ),
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
                                builder: (ctx) => const LoginPage()));
                          },
                          child: const Text(
                            'Login',
                            style: TextStyle(color: Colors.orange),
                          )),
                    ],
                  ),
                  divider(),
                  const GoogleSignInButton()
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

Widget textInput(
    {controller, hint, icon, FormFieldValidator<String>? validator}) {
  return Container(
    margin: const EdgeInsets.only(top: 10),
    decoration: const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: TextFormField(
        validator: validator,
        style: const TextStyle(fontSize: 15),
        controller: controller,
        decoration: InputDecoration(
          fillColor: const Color(0xfff3f3f4),
          filled: true,
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
