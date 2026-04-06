import 'package:flutter/material.dart';
import 'package:gym_app/model/item_model.dart';

class ItemProvider extends ChangeNotifier {
  List<ItemModel> cart = [];

  // add to cart

  void add_to_cart(ItemModel item) {
    cart.add(item);
    notifyListeners();
  }

  // remove from cart
  
  void remove_from_cart(int index) {
    cart.removeAt(index);
    notifyListeners();
  }
  // get total price

  double get total_price {
    double total_price = 0;
    for (var element in cart) {
      total_price += element.price as double;
    }
    return total_price;
  }
}
