import 'package:flutter/material.dart';
import 'package:food_panda/screens/add_to_cart_button.dart';

class DetailPage extends StatelessWidget {
  final String url;
  final String name;
  final int index;
  const DetailPage({
    super.key,
    required this.name,
    required this.url,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(255, 170, 0, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(255, 170, 0, 1),
      ),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 450,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 170,
                    ),
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'the beef, traditional pizza sauce made from tom garlic, and herbs serves as the flavorful foundation. Cheese, usually mozzarella or a blend of cheeses, is generously layered on top of the sauce to add creaminess and richness.',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(fontWeight: FontWeight.w900),
                        ),
                        SizedBox(
                          width: 100,
                        ),
                        Icon(
                          Icons.fireplace_rounded,
                          color: Colors.orange,
                        ),
                        Text(
                          '100kcal',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        Icon(
                          Icons.alarm,
                          color: Colors.pink,
                        ),
                        Text(
                          '5-10 min ',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CartButton(
                      index: index,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Image.asset(
            url,
            fit: BoxFit.fill,
            height: 400,
            width: 420,
          ),
        ],
      ),
    );
  }
}
