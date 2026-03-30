import 'package:flutter/material.dart';

class Categors extends StatelessWidget {
  final String name;
  final IconData? icon;
  final bool is_selected ;
  const Categors({super.key, required this.name, this.icon , this.is_selected =false});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
      decoration: BoxDecoration(
        color: is_selected ? Colors.orange :  Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          // BoxShadow(color: Colors.black26, blurRadius: 6, offset: Offset(0, 4)),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
          Icon(icon), 
          Text(name)],
      ),
    );
  }
}
