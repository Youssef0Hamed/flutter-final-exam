import 'package:flutter/material.dart';
import 'package:food_app/view/screens/restaurant_screen.dart';

class CategoryCard extends StatelessWidget {
  final String title;
  final String time_taken;
  final String img;
  final String rate;
  final String dis;
  final bool free_delivery;
  CategoryCard({
    required this.title,
    super.key,
    required this.time_taken,
    required this.img,
    required this.rate,
    required this.dis,
    this.free_delivery = false,
  });

// move it co card

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => RestaurantScreen()),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: Offset(1, 4),
              blurRadius: 6,
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    height: 150,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    img,
                  ),
                  Positioned(
                    top: 15,
                    right: 15,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[300],
                      child: IconButton(
                        onPressed: () {
                          // app_provider.toggleFavorite(Product(time: time, rate: rate, title: title, subtitle: subtitle, price: price));
                        },
                        icon: Icon(Icons.favorite, color: Colors.red),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 15,
                    left: 15,
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[300],
                      ),
                      child: Text(time_taken, style: TextStyle(fontSize: 14)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.star, color: Colors.amber),
                        Text(
                          rate,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),

                    Text(
                      dis,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    SizedBox(height: 10),

                    if (free_delivery)
                      Container(
                        margin: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 2, 5, 2),
                          child: Text(
                            "Free Delivery",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.orange,
                            ),
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
  }
}
