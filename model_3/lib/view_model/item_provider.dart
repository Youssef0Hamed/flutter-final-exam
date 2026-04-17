import 'package:flutter/material.dart';
import 'package:model_3/model/model.dart';

class ItemProvider extends ChangeNotifier {
  List<item_Model> cart = [];
  void add_to_cart(item_Model item) {
    if (cart.contains(item)) {
      cart[cart.indexOf(item)].quantaty++;
    } else {
      cart.add(item);
      notifyListeners();
    }
  }

  void remove_from_cart(int index) {
    cart.removeAt(index);
    notifyListeners();
  }

  double total_price() {
    double total_price = 0;
    for (var element in cart) {
      total_price += element.price * element.quantaty;
    }
    return total_price;
  }

  increase_quantaty(int index) {
    cart[index].quantaty++;
    notifyListeners();
  }

  decrease_quantaty(int index) {
    if (cart[index].quantaty > 1) {
      cart[index].quantaty--;
    } else {
      cart.removeAt(index);
    }
    notifyListeners();
  }

  void clear_cart() {
    cart.clear();
    notifyListeners();
  }
}
