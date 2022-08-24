
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Settings",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.card_giftcard,
                    color: Color.fromARGB(255, 237, 135, 58),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Coupons",
                    style: TextStyle(fontSize: 15),
                  ),

                ],
              ),
            ),
              const SizedBox(height: 15),
             GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.credit_card,
                    color: Color.fromARGB(255, 237, 135, 58),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Saved Cards",
                    style: TextStyle(fontSize: 15),
                  ),
                  
                ],
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Icon(
                    Icons.headset_mic_sharp,
                    color: Color.fromARGB(255, 237, 135, 58),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Help",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            GestureDetector(
              onTap: () {
              },
              child: Row(
                children: const [
                  Icon(
                    Icons.privacy_tip,
                    color: Color.fromARGB(255, 237, 135, 58),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "Terms,Policies and Licenses",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
