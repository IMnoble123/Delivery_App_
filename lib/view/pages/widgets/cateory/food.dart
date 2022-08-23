import 'package:delivery/view/pages/widgets/cateory/customcard.dart';
import 'package:delivery/view/pages/widgets/cateory/list.dart';
import 'package:flutter/material.dart';

class FoodhomePage extends StatelessWidget {
  const FoodhomePage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        // decoration: BoxDecoration(
        //   shape: BoxShape.circle,
        //   color: Colors.blueGrey.withOpacity(.26),
        // ),
        child: Container(
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Colors.black),
            child: const Icon(
              Icons.add,
              color: Colors.white,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 80),
            // Padding(
            //   padding: const EdgeInsets.only(right: 20, top: 50),
            //   child: Align(
            //     alignment: Alignment.topRight,
            //     child: Image.asset(
            //       'assets/download2.png',
            //       height: 11,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                'Simple way to find \n Tasty food',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  HeadlinePage(title: "Pizza's"),
                  HeadlinePage(title: "Burgers"),
                  HeadlinePage(title: "South indian"),
                  HeadlinePage(title: "Barbecue"),
                ],
              ),
            ),
            SizedBox(
              height: 90,
              width: double.infinity,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      hintText: "Search here",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CustomCard(
                      title: "Vegan salad bowl",
                      ingredient: "tofu, seitan, edamame, beans or legumes",
                      image: "assets/bowl1.png,",
                      price: 20,
                      calories: "300Kcal",
                      description:
                          "The best Buddha bowls start with a base of rice or whole grains which can be served cold or warm. Top with your favorite plant-based protein (tofu, seitan, edamame, beans or legumes),",
                      press: () {}),
                  CustomCard(
                      title: "Vegan salad bowl",
                      ingredient: "tofu, seitan, edamame, beans or legumes",
                      image: "assets/bowl1.png,",
                      price: 20,
                      calories: "300Kcal",
                      description:
                          "The best Buddha bowls start with a base of rice or whole grains which can be served cold or warm. Top with your favorite plant-based protein (tofu, seitan, edamame, beans or legumes),",
                      press: () {}),
                  const SizedBox(
                    width: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
