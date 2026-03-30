import 'package:flutter/material.dart';

class Appetizers extends StatelessWidget {
  final String title;
  final String img;
  final String price;
  final String dis;
  const Appetizers({
    super.key,
    required this.title,
    required this.img,
    required this.price,
    required this.dis,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          leading: ClipRRect(
            child: Image.asset(img, height: 100, fit: BoxFit.cover),
          ),
          trailing: CircleAvatar(child: Icon(Icons.add)),
          title: Text(title),
          subtitle: Text(dis),
        ),
      ),
    );
  }
}
