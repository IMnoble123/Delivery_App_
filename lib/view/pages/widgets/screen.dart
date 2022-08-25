import 'package:delivery/view/pages/utls/size_config.dart';
import 'package:delivery/view/pages/widgets/category_card.dart';
import 'package:delivery/view/pages/widgets/discount_page.dart';
import 'package:delivery/view/pages/widgets/home_head.dart';
import 'package:delivery/view/pages/widgets/popular_product.dart';
import 'package:delivery/view/pages/widgets/special_offers.dart';
import 'package:flutter/material.dart';

class Screen extends StatelessWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          const HomeHeader(),
          SizedBox(
            height: getProportionateScreenHeight(10),
          ),
          const DiscountPage(),
          const Categories(),
          const SpecialOffers(),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          const PopularProducts(),
          SizedBox(height: getProportionateScreenWidth(30)),
        ],
      ),
    ));
  }
}
