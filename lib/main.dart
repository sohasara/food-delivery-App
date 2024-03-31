import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_panda/screens/1st_screen.dart';
import 'package:food_panda/state_management/cart_manage.dart';

final cartProvider =
    StateNotifierProvider<CartController, List<Product>>((ref) {
  return CartController();
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      home: const FristScreen(),
    );
  }
}
