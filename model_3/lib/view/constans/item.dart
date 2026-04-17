import 'package:flutter/material.dart';
import 'package:model_3/model/model.dart';
import 'package:model_3/view/details_screen.dart';
import 'package:model_3/view_model/item_provider.dart';
import 'package:provider/provider.dart';

class Item extends StatelessWidget {
  final item_Model Item_model;
  Item({super.key, required this.Item_model});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ItemProvider>(context);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => details_Screen()),
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(padding: const EdgeInsets.all(8.0)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(Item_model.title, style: TextStyle(fontSize: 24)),
                      Text(
                        "\$${Item_model.price}",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                  Text(Item_model.dis),

                  InkWell(
                    onTap: () => pro.add_to_cart(Item_model),

                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.black),

                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Icon(Icons.add), Text("add")],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
