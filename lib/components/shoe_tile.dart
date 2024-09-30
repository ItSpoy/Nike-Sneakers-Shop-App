import 'package:flutter/material.dart';
import '../models/shoe.dart';
class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15),
      width: 300,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // shoe pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(shoe.imagePath),
          ),
          // description of the shoe 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Text(
              shoe.description,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[400],
              ),
            ),
          ),
          // price + details
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // show name
                    Text(
                      shoe.name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                    const SizedBox(height: 5),
                    // price
                    Text(
                      shoe.price +'\$',
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                // plus botton
                GestureDetector(
                  onTap: onTap,
                  child: Container(
                    padding: const EdgeInsets.all(22),
                    decoration: const BoxDecoration(color: Colors.black ,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight:Radius.circular(12) 
                    )),
                    child: const Icon(Icons.add,
                    color: Colors.white
                    ),
                  ),
                )
              ],
            ),
          ),
          // button to add to cart
        ],
      ),
    );
  }
}