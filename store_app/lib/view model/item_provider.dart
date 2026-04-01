import 'package:flutter/material.dart';
import 'package:store_app/model/item_model.dart';

class ItemProvider extends ChangeNotifier {
  final List<ItemModel> cart_items = [];
  //  add to card
  void add_to_card(ItemModel item) {
    cart_items.add(item);
    notifyListeners();
  }

  //  remove from card
  void remove_from_card(ItemModel item) {
    cart_items.add(item);
    notifyListeners();
  }

  double get total_price {

    double total_price =0  ;
    for (var element in cart_items) {
      total_price +=element.price as double  ;
    }
    return total_price ;
  }
}
