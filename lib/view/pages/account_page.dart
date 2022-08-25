import 'package:delivery/view/pages/widgets/pagefor_acc.dart';
import 'package:delivery/view/pages/widgets/title.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title:  const TitlePage(size: 15,),
        actions: const [
          Icon(Icons.notifications,color: Color.fromARGB(255, 237, 135, 58),
          ),
          SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const  SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 18,right: 18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
               const Text("Hello,",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
               IconButton(onPressed: (){}, icon: const Icon(Icons.account_circle_outlined,size: 30,))
                ],
              ),
            ),
           const  SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width *0.4,
                    decoration: BoxDecoration(
                      color: Colors.amber[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text('Your Orders')),
                  ),
                ),
                    GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width *0.4,
                    decoration: BoxDecoration(
                      color: Colors.amber[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Align(
                      alignment: Alignment.center,
                      child: Text('Your Account')),
                  ),
                ),
              ],
            ),
           const  SizedBox(height: 10),
           const Divider(color: Color.fromARGB(255, 203, 201, 201)),
           const  SizedBox(height: 10),
           const SettingsPage(),
           const SizedBox(height: 50),
          


          ],
        ),
      ),
    );
  }
}