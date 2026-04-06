import 'package:flutter/material.dart';
import 'package:gym_app/model/item_model.dart';
import 'package:gym_app/view/constans/item.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, size: 35),
                Icon(Icons.card_giftcard, size: 35),
              ],
            ),
            Text(
              "find Your Class",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "Search for a class orinstructor",
                hintStyle: TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.grey[200],
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  catgores(catgore: 'yoga'),
                  catgores(catgore: 'hit'),
                  catgores(catgore: 'yoga'),
                  catgores(catgore: 'yoga'),
                  catgores(catgore: 'yoga'),
                  catgores(catgore: 'e'),
                  catgores(catgore: 'yoga'),
                  catgores(catgore: 'e'),
                  catgores(catgore: 'yoga'),
                  catgores(catgore: 'yoga'),
                ],
              ),
            ),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  date(date1: "THE", date2: "12"),
                  date(date1: "THE", date2: "12"),
                  date(date1: "THE", date2: "12"),
                  date(date1: "THE", date2: "12"),
                  date(date1: "THE", date2: "12"),
                  date(date1: "THE", date2: "12"),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Item(
                    itemModel: ItemModel(
                      img: "assts/image.png",
                      title: "Vinyasa Flow",
                      couch: "alix ray",
                      time: "7:00 AM - 7:45 AM",
                      leveltype: "all levels",
                    ),
                  ),

                  Item(
                    itemModel: ItemModel(
                      img: "assts/image.png",
                      title: "Vinyasa Flow",
                      couch: "alix ray",
                      time: "7:00 AM - 7:45 AM",
                      leveltype: "all levels",
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.home ,size: 26,),
            Icon(Icons.search ,size: 26,),
            Icon(Icons.calendar_month ,size: 26,),
            Icon(Icons.person ,size: 26,),
        
          ],
        ),
      ),
    );
  }
}

class catgores extends StatelessWidget {
  final String catgore;
  const catgores({super.key, required this.catgore});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [Text(catgore)]),
          ),
        ),
      ),
    );
  }
}

class date extends StatelessWidget {
  final String date1;
  final String date2;
  const date({super.key, required this.date1, required this.date2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [Text(date1), Text(date2)]),
          ),
        ),
      ),
    );
  }
}
