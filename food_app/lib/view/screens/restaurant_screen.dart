import 'package:flutter/material.dart';
import 'package:food_app/view/constans/Appetizers.dart';
import 'package:food_app/view/constans/categors.dart';

class RestaurantScreen extends StatelessWidget {
  const RestaurantScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
              color: Colors.black,
            ),
          ),
          SizedBox(width: 5),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.shopping_cart_rounded),
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(25),
              child: Image.asset(
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                "assets/soua.jpeg",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "The Great Italian",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("italian", style: TextStyle(fontSize: 14)),
                Text(".", style: TextStyle(fontSize: 14)),
                Icon(Icons.star, color: Colors.amber),
                Text("4.5", style: TextStyle(fontSize: 14)),
                Text(".", style: TextStyle(fontSize: 14)),
                Text("25-30 min", style: TextStyle(fontSize: 14)),
                SizedBox(width: 100),
              ],
            ),
            SizedBox(
              height: 50,
              child: Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Categors(name: "Appetizers"),
                    Categors(name: "pizza"),
                    Categors(name: "pasta"),
                    Categors(name: "dessert"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Appetizers",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Appetizers(
              title: 'Fried Calamari',
              img: 'assets/soua.jpeg',
              price: '',
              dis:
                  'Lightly breaded and fried toa golden crisp. Served withmarinara sauce',
            ),
          ],
        ),
      ),
    );
  }
}
