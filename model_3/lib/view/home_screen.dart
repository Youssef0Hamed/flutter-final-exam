import 'package:flutter/material.dart';
import 'package:model_3/model/model.dart';
import 'package:model_3/view/cart_screen.dart';
import 'package:model_3/view/constans/item.dart';
import 'package:model_3/view/constans/nav_bar.dart';
import 'package:model_3/view/final.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CartScreen()),
          ),
          icon: Icon(Icons.card_travel),
        ),

        title: Text("data"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("kndlna;sd ;lakdn;n"),
                          Text(
                            "kndlna;sd ;lakdn;n",
                            style: TextStyle(fontSize: 30),
                          ),
                          Container(
                            height: 150,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Item(
                Item_model: item_Model(title: "jeens", dis: "des 1", price: 24),
              ),
              Item(
                Item_model: item_Model(
                  title: "title 2",
                  dis: "dis 2",
                  price: 20,
                ),
              ),
              Item(
                Item_model: item_Model(
                  title: "title 3 ",
                  dis: "dis. 3",
                  price: 30,
                ),
              ),
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "kndlna;sd ;lakdn;n",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("kndlna;sd ;lakdn;n"),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("data"),
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
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}
