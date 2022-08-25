import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final String title;
  final String image;
  const CardPage({Key? key, required this.title, required this.image,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(onTap: () {}, child: Image.asset(image)),
                ),
                const SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          overflow: TextOverflow.ellipsis),
                    ),
                    const SizedBox(height: 13),
                    const Text(
                      'food-item',
                      style: TextStyle(fontSize: 12),
                    ),
                    const Text('★★★★☆'),
                    const SizedBox(height: 10),
                    const Text('\$10.00')
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.delete),
                    label: const Text('Remove')),
                const SizedBox(width: 15),
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.shopify_sharp),
                    label: const Text('Buy this now,')),
              ],
            )
          ],
        ),
      
    );
  }
}
// assets/mushroom.jpg
// Italin white Mushroom's...
