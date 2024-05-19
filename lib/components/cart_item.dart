import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_test/models/shoe.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
  final Shoe shoe;
  const CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: removeItemFromCart,
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
      ),
    );
  }
}
