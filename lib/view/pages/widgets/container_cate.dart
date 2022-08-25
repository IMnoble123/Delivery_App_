import 'package:flutter/material.dart';

class CategoriePage extends StatelessWidget {
  final String title;
  final String image;
  const CategoriePage({
    Key? key, required this.title, required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Container(
        height: size.height * 0.13,
        width: size.width*0.25,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(18)),
          child: Center(child: Text(title,style: const TextStyle(color: Colors.white),)),
        

      ),
    );
  }
}
