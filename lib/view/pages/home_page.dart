
import 'package:delivery/view/pages/utls/size_config.dart';
import 'package:delivery/view/pages/widgets/screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build( BuildContext context) {
      SizeConfig().init(context);
    return  const Scaffold(
      body:Screen()
    );
  }
}






// body: ListView(
//         children: [
//           Container(
//             width: double.infinity,
//             color: Colors.white,
//             height: height * 0.37,
//             child: Stack(
//               children: [
//                 Container(
//                   height: height * 0.27,
//                   width: double.infinity,
//                   decoration: const BoxDecoration(
//                     gradient: LinearGradient(
//                       begin: Alignment.bottomLeft,
//                       end: Alignment.topRight,
//                       colors: [
//                         Color.fromARGB(255, 101, 235, 242),
//                         Color.fromARGB(255, 101, 242, 174),
//                         // Color.fromARGB(255, 41, 121, 184),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(top: height * 0.05),
//                       child: SizedBox(
//                         width: double.infinity,
//                         child: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 30),
//                           child: TextField(
//                             decoration: InputDecoration(
//                                 fillColor: Colors.white,
//                                 filled: true,
//                                 prefixIcon: const Icon(Icons.search),
//                                 hintText: "Search here",
//                                 border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10))),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SingleChildScrollView(
//                       scrollDirection: Axis.horizontal,
//                       child: Row(
//                         children: const [
//                           CategoriePage(
//                             title: "Grocery's",
//                             image: 'assets/medicine1.jpg',
//                           ),
//                           CategoriePage(
//                             title: 'Food items',
//                             image: 'assets/medicine1.jpg',
//                           ),
//                           CategoriePage(
//                             title: 'Medicines',
//                             image: 'assets/medicine1.jpg',
//                           ),
//                           CategoriePage(
//                             title: 'Medicines',
//                             image: 'assets/medicine1.jpg',
//                           ),
//                           CategoriePage(
//                             title: 'Medicines',
//                             image: 'assets/medicine1.jpg',
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 20),
//           const Padding(
//             padding: EdgeInsets.all(10.0),
//             child: SlideShow(),
//           ),
//           const SizedBox(height: 25),
//           const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Text(
//               'Newly Launched',
//               style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//             ),
//           ),
//         ],
//       ),