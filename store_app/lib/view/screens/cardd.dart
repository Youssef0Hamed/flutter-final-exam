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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 130,
                    height: 130,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            "${pro.cart_items[index].img}",
                            fit: BoxFit.cover,
                            width: 60,
                            height: 60,
                          ),
                        ),
                        SizedBox(width: 15),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "${pro.cart_items[index].title}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "${pro.cart_items[index].suptitle}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 15,
                                  ),
                                ),
                                Text(
                                  "\$${pro.cart_items[index].price.toStringAsFixed(2)}",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () => pro.decrease_quntity(index),
                                  child: Center(
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Icon(Icons.minimize, size: 20),
                                    ),
                                  ),
                                ),
                                Text("${pro.cart_items[index].quantity}"),
                                InkWell(
                                  onTap: () => pro.increase_quntity(index),
                                  child: Center(
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      child: Icon(Icons.add, size: 20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            // width: 200,
            // height: 200,
            decoration: BoxDecoration(
              color: Colors.white
            ),
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Subtotal",style: TextStyle(color: Colors.grey[500]),),
                      Text("\$${pro.total_price.toStringAsFixed(2)}",style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping",style: TextStyle(color: Colors.grey[500])),
                      Text("Calculated at next step",style: TextStyle(fontWeight: FontWeight.bold)),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        minimumSize: Size(double.infinity, 60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(7)
                        )
                      ),
                     onPressed: () => {},
                     
                     child: Text("Proceed to checkout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
