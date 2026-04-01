import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:store_app/view%20model/item_provider.dart';

class cardd extends StatelessWidget {
  const cardd({super.key});

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shipping Cart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        actions: [
          IconButton(onPressed: pro.clear_card, icon: Icon(Icons.delete)),
        ],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              // shrinkWrap: true,
              itemCount: pro.cart_items.length,
              itemBuilder: (context, index) {
               return
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: pro.cart_items[index].img,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("${pro.cart_items[index].title}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                              Text("${pro.cart_items[index].suptitle}",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 15),),
                              Text("\$${pro.cart_items[index].price.toStringAsFixed(2)}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
