import 'package:flutter_riverpod/flutter_riverpod.dart';

class Product {
  final String name;
  final String price;
  final String url;
  Product({required this.name, required this.price, required this.url});
}

class CartController extends StateNotifier<List<Product>> {
  CartController() : super([]);

  void addItemToCart(Product product) {
    state = [...state, product];
  }

  void removeItemFromCart(int index) {
    state = List.from(state)..removeAt(index);
  }
}
