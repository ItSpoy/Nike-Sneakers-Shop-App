import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // Add shoe to cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context , listen: false).additemsToCart(shoe);
    // alert the user , shoe successfully added 
    showDialog(context: context, builder:(context) => AlertDialog(
      title: const Text(
        "Successfully Added !" , 
      textAlign:TextAlign.center,
      ),
      content: const Text(
        "Check your Cart" , 
        textAlign:TextAlign.center,
      ),
      backgroundColor: Colors.grey[400],
      alignment: Alignment.center,
    ),);

  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Column(
      children: [
        // Search bar 
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200], 
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
                ),
              Icon(
                Icons.search , 
                color: Colors.grey,
              ),
            ],
          ),
        ),
        // Message
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            "Everyone Flies .. Some fly longer than Others",
            style: TextStyle(
              color: Colors.grey[400]),
            ),
        ),
        // hot picks
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:[
              Text(
                'Hot Picks 🔥',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        // List of shoes for Sale
        
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            scrollDirection: Axis.horizontal,
            itemBuilder:(context, index) {
              // get a Shoe from shop list
              Shoe shoe = value.getShoelist()[index];
              // return the shoe
              return ShoeTile(
                shoe:shoe,
                onTap: () => addShoeToCart(shoe), 
              );
            },
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 25.0 , right: 25.0),
          child: Divider(
            color: Colors.white,
          ),
        )
      ],
    ),
    );
  }
}