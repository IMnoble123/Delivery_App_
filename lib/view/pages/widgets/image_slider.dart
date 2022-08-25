import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class SlideShow extends StatelessWidget {
  const SlideShow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
        width: double.infinity,
        height: 200,
        initialPage: 0,
        indicatorColor: Colors.blue,
        indicatorBackgroundColor: Colors.grey,
        onPageChanged: (value) {},
        autoPlayInterval: 5000,
        isLoop: true,
        children: [
          Image.asset('assets/offer.jpg', fit: BoxFit.cover),
          Image.asset('assets/offer2.jpg', fit: BoxFit.cover),
          Image.asset('assets/offer3.jpeg',fit: BoxFit.cover),
          Image.asset(
            'assets/offer4.jpg',
            fit: BoxFit.fill,
          )
        ]);
  }
}
