import 'package:flutter/material.dart';

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {  
   final pro = 
    return Scaffold(
      appBar: AppBar(
        title: Text("Shipping Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
        ),
        actions: [Icon(Icons.delete)],
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: ,
            itemBuilder: )
        ],
      ),
      
    );
  }
}