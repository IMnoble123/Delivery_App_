import 'package:flutter/material.dart';

class SuccesPage extends StatelessWidget {
  const SuccesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
           Padding(
             padding: const EdgeInsets.only(left: 110),
             child: Stack(
          alignment: AlignmentDirectional.topCenter,
          clipBehavior: Clip.none,
          children: [
              Card(
                color: Colors.green.shade50,
                child: const Padding(
                  padding:  EdgeInsets.fromLTRB(32,56,32,32),
                  child: Text('Successfull',style: TextStyle(fontSize: 15),),
                ),
              ),
              Positioned(
                top: -40,
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.green.shade50,width: 20),
                    shape: BoxShape.circle
                  ),
                  child: const Icon(Icons.gpp_good,color: Colors.green,),
                )
                ),
          ],
        ),
           ),
        ]
      )
    );
  }
}
