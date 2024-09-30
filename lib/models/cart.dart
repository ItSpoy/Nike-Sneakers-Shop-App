import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom Freak', 
      price: '220', 
      description: 'The Forward-thinking Design of his Lastest Signature Shoe.',
      imagePath: 'lib/images/zoom freak.png', 
    ),
    Shoe(
      name: 'Air Jordan', 
      price: '270', 
      description: 'You\'ve Got The Hops and teh Speed-lace up in Shoes that Enhance Power',
      imagePath: 'lib/images/air jordan.png', 
    ),
    Shoe(
      name: 'KD Treys', 
      price: '240', 
      description: 'A Secure Midfoot Strap is suited for Scoring Binges',
      imagePath: 'lib/images/kd Trey.png', 
    ),
    Shoe(
      name: 'Kyrie 6', 
      price: '180', 
      description: 'bouncy cushioning is paired with soft yet supportive foam',
      imagePath: 'lib/images/kyrie.png', 
    ),
  ];

  // list of items in user's cart 
  List<Shoe> userCart = [];
  
  //get list of shoes for sale
  List<Shoe> getShoelist(){
    return shoeShop;
  }

  //get cart 
  List<Shoe> getUsercart(){
    return userCart;
  }

  // add items to cart 
  void additemsToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart
  void removeItemFromcart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}