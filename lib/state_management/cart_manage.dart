import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final String name;
  final String price;
  final String url;
  Product({required this.name, required this.price, required this.url});
}

class CartController extends StateNotifier<List<Product>> {
  CartController() : super([]);

  // void addItemToCart(Product product) {
  //   state = [...state, product];
  // }
  void addItemToCart(Product product, BuildContext context) {
    // Check if the product is already in the cart
    final alreadyInCart = state.any((item) => item.name == product.name);
    if (!alreadyInCart) {
      state = [...state, product];

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.pink,
          content: Text(
            'Successfully added to  the cart',
          ),
          duration: Duration(seconds: 2),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('Item ${product.name} is already in the cart.'),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  void removeItemFromCart(int index) {
    state = List.from(state)..removeAt(index);
  }
}
