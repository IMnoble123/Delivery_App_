import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cooktime;
  final String thumbnailUrl;
  const FoodCard({Key? key, required this.title, required this.rating, required this.cooktime, required this.thumbnailUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      height: 180,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: const Offset(0.0, 10.0),
              blurRadius: 10.0,
              spreadRadius: -6.0,
            ),
          ],
          image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.35), BlendMode.multiply),
              image: NetworkImage(thumbnailUrl),
              fit: BoxFit.cover)),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text(title,
              style: const TextStyle(fontSize: 15),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
              ),
            ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                  padding:const  EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Row(
                    children: const [
                      Icon(Icons.star,
                      color: Colors.yellow,
                      size: 15,
                      ),
                      SizedBox(width: 7,)
                    ],
                  ),
                 ) ,
                 Container(
                  padding: const EdgeInsets.all(5),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black.withOpacity(0.4),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.schedule,color: Colors.yellow,
                      size: 18,),
                     const SizedBox(width: 7,),
                      Text(cooktime),
                    ],
                  ),
                 )
                ],
              ),
            )
          ]),
    );
  }
}
