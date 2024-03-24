import 'package:flutter/material.dart';

class SearchBBar extends StatelessWidget {
  const SearchBBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 40,
        top: 10,
        bottom: 15,
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          hintText: 'Search your food',
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
          filled: true,
          fillColor: Colors.pink,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
