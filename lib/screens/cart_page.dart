import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_panda/main.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cart = ref.watch(cartProvider);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          ' YOUR  ITEM  CART',
          style: TextStyle(
            fontWeight: FontWeight.w900,
            color: Colors.pink,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: cart.length,
        itemBuilder: (context, index) {
          final product = cart[index];
          return ListTile(
            title: Text(
              product.name,
              style: const TextStyle(fontWeight: FontWeight.w900),
            ),
            subtitle: Text(product.price),
            leading: CircleAvatar(
              backgroundImage: AssetImage(product.url),
            ),
            trailing: IconButton(
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
              onPressed: () {
                ref.read(cartProvider.notifier).removeItemFromCart(index);
              },
            ),
          );
        },
      ),
    );
  }
}
