import 'package:delivery/view/pages/widgets/cart_card.dart';
import 'package:delivery/view/pages/widgets/delivery_widet.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Your Cart',
            style: TextStyle(fontSize: 16),
          ),
          backgroundColor: Colors.white),
      body: ListView(children: [
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Delivery to,",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
          ),
        ),
        const AddressPage(),
        const SizedBox(height: 20),
        const CardPage(
            image: 'assets/mushroom.jpg', title: "Italin white Mushroom's..."),
        const SizedBox(height: 10),
        const CardPage(
            image: 'assets/dishwash.jpg',
            title: "Anti-Baterial Dishwash Bar.."),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("\$20.00"),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width * 0.35,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xfffbb448),
                    ),
                    child: const Text(
                      'Place Order',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    )),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
