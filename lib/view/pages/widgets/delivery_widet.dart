import 'package:flutter/material.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children:  [
              const Text('Deliver to :',style: TextStyle(fontSize: 15),),
              const Text('Subin..,673634',style: TextStyle(fontWeight: FontWeight.w700),),
              const SizedBox(width: 12),
              TextButton(onPressed: (){}, child:const Text('Change',style: TextStyle(fontWeight: FontWeight.w700),))
            ],
          ),
          const Text('Vadhakara,kozhikode,..'),
          const  Text("140+orders from kozhikode"),
        ],
      ),
    );
  }
}
