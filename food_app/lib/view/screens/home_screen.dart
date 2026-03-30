import 'package:flutter/material.dart';
import 'package:food_app/view/constans/categors.dart';
import 'package:food_app/view/constans/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.abc_outlined),
        actions: [Icon(Icons.more_vert_outlined)],
        title: Text("Delivering to 123 Main St"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.30),
                    blurRadius: 6,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search hsbave to Retaun hots",
                  filled: true,
                  fillColor: Colors.grey[200],
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Categors(
                    name: 'All',
                    icon: Icons.settings_accessibility_outlined
                  ),
                  Categors(name: 'pizza', icon: Icons.local_pizza),
                  Categors(name: 'soushi', icon: Icons.local_pizza),
                  Categors(name: 'berger', icon: Icons.local_pizza),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: ListView(
                children: [
                  CategoryCard(
                    title: 'The Gourmet Kitchen',
                    time_taken: '25-30 m',
                    img: 'assets/pizza3.jpeg',
                    rate: '5.0',
                    dis: 'Italian • Pasta • Salads • \$2.99 delivery',
                    free_delivery: true,
                  ),
                  SizedBox(height: 15),
                  CategoryCard(
                    title: 'The Gourmet Kitchen',
                    time_taken: '25-30 m',
                    img: 'assets/cheese.jpeg',
                    rate: '5.0',
                    dis: 'Italian • Pasta • Salads • \$2.99 delivery',
                  ),
                  SizedBox(height: 15),
                  CategoryCard(
                    title: 'The Gourmet Kitchen',
                    time_taken: '25-30 m',
                    img: 'assets/cake2.jpeg',
                    rate: '5.0',
                    dis: 'Italian • Pasta • Salads • \$2.99 delivery',
                  ),
                  SizedBox(height: 15),
                  CategoryCard(
                    title: 'The Gourmet Kitchen',
                    time_taken: '25-30 m',
                    img: 'assets/pizza3.jpeg',
                    rate: '5.0',
                    dis: 'Italian • Pasta • Salads • \$2.99 delivery',
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
