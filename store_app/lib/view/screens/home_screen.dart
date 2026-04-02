import 'package:flutter/material.dart';
import 'package:store_app/model/item_model.dart';
import 'package:store_app/view/constans/item.dart';
import 'package:store_app/view/screens/card_screen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  @override
  List<ItemModel> items = [
  ItemModel(
    title: "Linen Blend Shirt",
    price: 120,
    img: "assets/1.jpg",
  ),
  ItemModel(
    title: "Denim Jacket",
    price: 200,
    img: "assets/2.jpg",
  ),
  ItemModel(
    title: "Sneakers",
    price: 150,
    img: "assets/3.jpg",
  ),
  ItemModel(
    title: "T-shirt",
    price: 80,
    img: "assets/8.jpg",
  ),
];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return
                    cardd();
                  },
                ),
              );
            },
            icon: Icon(Icons.card_travel),
          ),
        ],
        leading: Icon(Icons.search),

        title: Text("New arrivals"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Text("Filter ", style: TextStyle(fontSize: 16)),
                        Icon(Icons.format_list_numbered),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      children: [
                        Text("sort by ", style: TextStyle(fontSize: 16)),
                        Icon(Icons.arrow_drop_down),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                itemCount: items.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) => Item(
                  model: items[index],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
