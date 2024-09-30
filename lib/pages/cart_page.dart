import 'package:e_commerce_app/components/cart_item.dart';
import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';
class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>
    (builder:(context, value, child) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Heading 
          const Text(
            "My cart",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: value.getUsercart().length,
              itemBuilder: (context, index) {
              // get individual shoe
              Shoe individualShoe = value.getUsercart()[index];
              //return the cart item
              return CartItem(shoe: individualShoe);
              },
            ),
          ),
        ],
      ),
    ),);
  }
}