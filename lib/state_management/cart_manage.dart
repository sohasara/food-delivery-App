import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartItem {
  final String name;
  final double price;
  CartItem({required this.name, required this.price});
}

class CartNotifier extends StateNotifier {
  CartNotifier(super.state);
  void addItem(CartItem item) {
    state = [...state, item];
  }
}
