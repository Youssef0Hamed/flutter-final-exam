import 'package:flutter/material.dart';
class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                ),
              ),
            ],
          ),
        ),
        Text("title"),
        Text("price"),
      ],
    );
  }
}
