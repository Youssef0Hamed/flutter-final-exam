import 'package:flutter/material.dart';
import 'package:model_3/view/cart_screen.dart';
import 'package:model_3/view/final.dart';
import 'package:model_3/view/home_screen.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ),
            icon: Icon(Icons.home),
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CartScreen()),
            ),
            icon: Icon(Icons.card_travel_sharp),
          ),
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Final_screen()),
            ),
            icon: Icon(Icons.maps_ugc_sharp),
          ),
        ],
      ),
    );
  }
}
