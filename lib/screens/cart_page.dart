import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:food_panda/data/main_page_info.dart';
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
          ' Your Cart',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink),
        ),
      ),
      body: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                info[index]['item_name'].toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              subtitle: Text(
                info[index]['price'].toString(),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(info[index]['url'].toString()),
              ),
              trailing: IconButton(
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {},
              ),
            );
          }),
    );
  }
}
