import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/model/item_model.dart';
import 'package:store_app/view%20model/item_provider.dart';

class ItemDetails extends StatelessWidget {
  final ItemModel model;

  ItemDetails({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.favorite)],

        title: Text("minimalist Sneaker"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.amber,
              ),
            ),
            Text(
              "Minimalist Sneaker",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),

            Text(
              "All-day comfort with a sleek, modern design.",
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 15),

            Text(
              "\$120",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Text(
              "size",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                sizes(size: 3),
                sizes(size: 3),

                sizes(size: 3),
                sizes(size: 3),
                sizes(size: 3),
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Quantity",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Container(
              height: 40,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 1, color: Colors.grey[400]!),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      pro.remove_from_card(model);
                    },
                    icon: Icon(Icons.remove),
                  ),
                  Text(pro.total_price.toString()),
                  IconButton(
                    onPressed: () {
                      pro.add_to_card(model);
                    },
                    icon: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class sizes extends StatelessWidget {
  @override
  final int size;

  const sizes({super.key, required this.size});
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 1, color: Colors.grey[400]!),
          borderRadius: BorderRadius.circular(6),
        ),
        child: Center(
          child: Text(
            size.toString(),
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
