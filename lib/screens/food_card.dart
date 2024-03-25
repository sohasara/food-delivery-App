import 'package:flutter/material.dart';
import 'package:food_panda/screens/details_screen.dart';

class FoodCard extends StatelessWidget {
  final String url;
  final String name;
  final String time;
  final String rating;
  final String price;
  const FoodCard({
    super.key,
    required this.name,
    required this.price,
    required this.rating,
    required this.time,
    required this.url,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DetailPage()));
      },
      child: SizedBox(
        height: 270,
        width: 180,
        child: Card(
          elevation: 4,
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 200,
                child: Image.asset(
                  url,
                  fit: BoxFit.cover,
                ),
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
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_box,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
