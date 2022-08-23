import 'package:flutter/material.dart';

class GoogleSignInButton extends StatelessWidget {
  const GoogleSignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context,) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        // onPrimary: Colors.white,
        primary: Colors.white,
        elevation: 0,
      ),
      onPressed: (){},
     child: Padding(
       padding: const EdgeInsets.fromLTRB(0 ,8 ,0 ,8),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: const [
          Image(image:AssetImage('assets/Background (2).png'),
          height: 18.0,
          width: 24,
           ),
          Padding(
            padding: EdgeInsets.only(left: 24,right: 8),
            child: Text('Sign in with Google',style: TextStyle(fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.black
            ),),
          )
        ],
       ),
     ));
  }
}