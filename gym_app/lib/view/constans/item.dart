import 'package:flutter/material.dart';
import 'package:gym_app/model/item_model.dart';
import 'package:gym_app/view%20model/item_provider.dart';
import 'package:gym_app/view/screens/class_details.dart';
import 'package:provider/provider.dart';

class Item extends StatelessWidget {
  

  // ignore: non_constant_identifier_names
  Item({super.key, required this.itemModel, this.is_booked = false});
  final ItemModel itemModel;

  bool is_booked;
  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ItemProvider>(context);
    int index = pro.cart.indexOf(itemModel);
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ClassDetails(itemModel: itemModel),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 0.6,
                offset: Offset(0, 4),
              ),
            ],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
                child: Image.asset(itemModel.img),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      itemModel.leveltype as String,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Text(
                      itemModel.title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "with ${itemModel.couch}",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          itemModel.time as String,
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {
                            // احتنال error
                            is_booked
                                ? pro.remove_from_cart(index)
                                : pro.add_to_cart(itemModel);
                            is_booked = !is_booked;
                            print(pro.cart);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),

                              color: is_booked
                                  ? Colors.grey
                                  : Colors.deepPurpleAccent,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                is_booked ? "Booked" : "add to cart",
                                style: TextStyle(
                                  color: is_booked
                                      ? Colors.black
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
