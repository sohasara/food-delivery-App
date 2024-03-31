import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_panda/data/main_page_info.dart';
import 'package:food_panda/main.dart';
import 'package:food_panda/screens/details_screen.dart';
import 'package:food_panda/state_management/cart_manage.dart';

class FoodCard extends StatelessWidget {
  final String url;
  final String name;
  final String time;
  final String rating;
  final String price;
  final int index;

  const FoodCard(
      {super.key,
      required this.name,
      required this.price,
      required this.rating,
      required this.time,
      required this.url,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              name: name,
              url: url,
              index: index,
            ),
          ),
        );
      },
      child: Container(
        height: 270,
        width: 180,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.6,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Image.asset(
              url,
              fit: BoxFit.fill,
              height: 150,
              width: double.infinity,
            ),
            Text(
              name,
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 15,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  width: 10,
                ),
                Text(
                  time,
                  style: const TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(
                  width: 66,
                ),
                const Icon(
                  Icons.star_border_outlined,
                  color: Colors.pink,
                ),
                Text(rating),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                  ),
                ),
                Consumer(builder: (context, ref, _) {
                  ref.watch(cartProvider);
                  return IconButton(
                    tooltip: 'cart',
                    onPressed: () {
                      ref.read(cartProvider.notifier).addItemToCart(
                            Product(
                              name: info[index]['item_name'].toString(),
                              price: info[index]['price'].toString(),
                              url: info[index]['url'].toString(),
                            ),
                          );

                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.pink,
                          content: Text(
                            'Successfully added to  the cart',
                          ),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.shopping_cart_sharp,
                      color: Colors.pink,
                    ),
                  );
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
