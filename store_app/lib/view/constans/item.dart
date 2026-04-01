import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/model/item_model.dart';
import 'package:store_app/view%20model/item_provider.dart';
import 'package:store_app/view/screens/item_details.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.model});
  final ItemModel model;
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ItemProvider>(context);
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ItemDetails(model: model,)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(16),
                    child: Container(color: Colors.amber),
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: IconButton(
                      onPressed: () {
                        pro.add_to_card(model);
                      },
                      icon: Icon(Icons.add),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Text(model.title),
          Text("\$${model.price}"),
        ],
      ),
    );
  }
}
