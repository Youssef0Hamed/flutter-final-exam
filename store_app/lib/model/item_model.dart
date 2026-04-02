import 'package:flutter/material.dart';

class ItemModel {
  final String title;
  final String? img;
  final double price;
  final String? suptitle;
  final String? size;
  int quantity ;

  ItemModel({
    required this.title,
   this.img,
   this.quantity = 1 ,
    required this.price,
    this.suptitle,
    this.size,
  });
}
