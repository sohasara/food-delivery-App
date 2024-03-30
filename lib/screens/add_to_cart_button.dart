import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_panda/data/main_page_info.dart';
import 'package:food_panda/main.dart';
import 'package:food_panda/state_management/cart_manage.dart';

class CartButton extends ConsumerWidget {
  final int index;
  const CartButton({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(cartProvider);
    return GestureDetector(
      onTap: () {
        ref.read(cartProvider.notifier).addItemToCart(Product(
              name: info[index]['item_name'].toString(),
              price: info[index]['price'].toString(),
              url: info[index]['url'].toString(),
            ));
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
