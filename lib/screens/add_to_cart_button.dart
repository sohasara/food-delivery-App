import 'package:flutter/material.dart';
import 'package:food_panda/screens/cart_page.dart';

class CartButton extends StatelessWidget {
  const CartButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CartPage(),
          ),
        );
      },
      child: Container(
        height: 50,
        width: 320,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(15),
        ),
        child: const Center(
            child: Text(
          'Add To Cart',
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        )),
      ),
    );
  }
}
