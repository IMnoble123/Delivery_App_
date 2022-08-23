import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String ingredient;
  final String image;
  final int price;
  final String calories;
  final String description;
  final Function press;
  const CustomCard(
      {Key? key,
      required this.title,
      required this.ingredient,
      required this.image,
      required this.price,
      required this.calories,
      required this.description,
      required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        height: 400,
        width: 270,
        child: Stack(
          children: [
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 380,
                  width: 250,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(34),
                      color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6,right: 6),
                    child: Column(
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          title,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                        const SizedBox(height: 12),
                        Container(
                          height: 181,
                          width: 181,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/bowl1.png")),
                              shape: BoxShape.circle,
                              color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(),
                            Text(
                              "\$$price",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                        Text(
                          "With $ingredient",
                          style: const TextStyle(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          description,
                          maxLines: 3,
                          style: TextStyle(color: Colors.black.withOpacity(.65)),
                        ),
                        const SizedBox(height: 16),
                        Text(calories),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
