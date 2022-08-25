import 'package:delivery/view/pages/utls/icon_button_with_counter.dart';
import 'package:delivery/view/pages/utls/size_config.dart';
import 'package:delivery/view/pages/widgets/search_field.dart';
import 'package:flutter/widgets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          SizedBox(height:getProportionateScreenHeight(20) ,),
          const SearchField(),
          IconBtnWithCounter(
            // svgSrc: "assets/icons/CartIcon.svg",
            press: (){},
          ),
           IconBtnWithCounter(
            press: (){},
          ),
        ],
      ),
    );
  }
}
