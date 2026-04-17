import 'package:flutter/material.dart';
import 'package:model_3/model/model.dart';
import 'package:model_3/view/constans/item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.three_mp), title: Text("data")),
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
              
            Item(Item_model: item_Model(title: "title", dis: "dis", price: 24),),
            Item(Item_model: item_Model(title: "title", dis: "dis", price: 24),),
            Item(Item_model: item_Model(title: "title", dis: "dis", price: 24),),
            ],
          ),
        ),
      ),
    );
  }
}
