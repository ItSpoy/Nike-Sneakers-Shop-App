import 'package:e_commerce_app/models/cart.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/shoe.dart';
class CartItem extends StatefulWidget {
  Shoe shoe ;
  CartItem({
    super.key,
    required this.shoe,
    });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromcart(){
    Provider.of<Cart>(context , listen: false).removeItemFromcart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[500],
        borderRadius: BorderRadius.circular(12),
        ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price + "\$"),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: removeItemFromcart,
        ),
      ),
    );
  }
}