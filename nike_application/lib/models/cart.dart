import 'package:flutter/material.dart';
import 'package:nike_application/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Force',
        price: '236',
        imagePath: 'lib/images/AirForce.png',
        description:
            'The forward-thinking design of his latest signature shoe.'),
    Shoe(
        name: 'Air Max Plus',
        price: '220',
        imagePath: 'lib/images/AirMaxPlus.png',
        description: 'Nice shoe'),
    Shoe(
        name: 'Air Max TW',
        price: '242',
        imagePath: 'lib/images/AirMaxTW.png',
        description: 'This shoe is nice.'),
    Shoe(
        name: 'Air Max',
        price: '190',
        imagePath: 'lib/images/AirMax.png',
        description: 'Cool shoe'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
