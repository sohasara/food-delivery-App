// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'package:food_panda/screens/main_screen.dart';

class FristScreen extends StatelessWidget {
  const FristScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('assets/1st_screen.png'),
          const Text(
            '30+ SALAD ITEMS HERE',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const Text(
            'Enjoy Healthy Food',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 27,
            ),
          ),
          const Text(
            'Food',
            style: TextStyle(
              color: Colors.pink,
              fontWeight: FontWeight.w900,
              fontSize: 27,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
