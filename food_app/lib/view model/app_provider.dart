import 'package:flutter/material.dart';
import 'package:food_app/model/model.dart';

class AppProvider extends ChangeNotifier {
  List<Product> card = [];
  List<Product> favorite = [];
  // add to cart
  void add_to_card(Product Product) {
    card.add(Product);
    notifyListeners();
  }

  // remove from cart
  void remove_from_card(Product Product) {
    card.remove(Product);
    notifyListeners();
  }

  // favorite
  void toggleFavorite(Product Product) {
    if (favorite.contains(Product)) {
      favorite.remove(Product);
    } else {
      favorite.add(Product);
    }
    notifyListeners();
  }

  double get total_price {
    double total_price = 0;
    for (var item in card) {
      total_price += item.price;
    }
    return total_price;
  }
}
