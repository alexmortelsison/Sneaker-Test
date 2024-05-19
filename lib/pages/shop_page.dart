import 'package:flutter/material.dart';
import 'package:sneaker_test/models/shoe.dart';

import '../components/shoe_tile.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(8)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Search', style: TextStyle(color: Colors.grey)),
              Icon(Icons.search, color: Colors.grey)
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text('Everyone flies... Some fly longer than others.',
              style: TextStyle(color: Colors.grey)),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              Shoe shoe = Shoe(
                  name: 'Air Jordan',
                  price: '172.69',
                  imagePath: 'images/1.png',
                  description: 'Cool');
              return ShoeTile(
                shoe: shoe,
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(color: Colors.white),
        )
      ],
    );
  }
}
