import 'package:delivery/view/pages/food_page.dart';
import 'package:delivery/view/pages/widgets/cateory/food.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: const Icon(null),
      ),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivery',
                  style: TextStyle(
                      color: Colors.grey[80],
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) =>const  Foodpage()));
                          },
                          child: category(isActive: true, title: 'Foods')),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(
                                builder: (ctx) =>const FoodhomePage ()));
                        },
                          child: category(isActive: true, title: 'Grocerys')),
                      InkWell(
                          child: category(isActive: true, title: 'Healthcare'))
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              'Free Delivery',
              style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                makeItem(image: 'assets/pizza21.jpg'),
                makeItem(image: 'assets/pineapple.jpg'),
                makeItem(image: 'assets/medicine1.jpg'),
              ],
            ),
          )),
          const SizedBox(height: 30),
        ],
      )),
    );
  }
}

Widget category({isActive, title}) {
  return AspectRatio(
    aspectRatio: isActive ? 3 : 2.5 / 1,
    child: Container(
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: isActive ? Colors.yellow[700] : Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Align(
          child: Text(
        title,
        style: TextStyle(
            color: isActive ? Colors.white : Colors.grey[500],
            fontWeight: isActive ? FontWeight.bold : FontWeight.w100,
            fontSize: 18),
      )),
    ),
  );
}

Widget makeItem({image}) {
  return AspectRatio(
    aspectRatio: 1 / 1.5,
    child: GestureDetector(
      child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(.9),
                      Colors.black.withOpacity(.3),
                    ],
                    begin: Alignment.bottomCenter,
                    stops: const [.2, .9])),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "\$10.00",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'items',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
    ),
  );
}
