import 'package:flutter/material.dart';
import 'package:gym_app/model/item_model.dart';
import 'package:gym_app/view%20model/item_provider.dart';
import 'package:gym_app/view/screens/cart_screen.dart';
import 'package:gym_app/view/screens/home_screen.dart';
import 'package:provider/provider.dart';

class ClassDetails extends StatelessWidget {
  ClassDetails({super.key, required this.itemModel});
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    final pro = Provider.of<ItemProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(itemModel.img, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemModel.title,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      catgores(catgore: 'Hiit'),
                      catgores(catgore: 'Hiit'),
                      catgores(catgore: 'Hiit'),
                    ],
                  ),
                  Row(
                    children: [
                      details(
                        iconData: Icons.timer,
                        title: 'title',
                        des: '60 minutes',
                      ),
                      Spacer(),
                      details(
                        iconData: Icons.timer,
                        title: 'title',
                        des: '60 minutes',
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  details(
                    iconData: Icons.timer,
                    title: 'title',
                    des: '60 minutes',
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "About",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                      Text(
                        "Instructor",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Text(
                        " Reviews",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Divider(),
                  Text(
                    "Description",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    """Youssef Hamed is a software developer and student at I-Tech School, enrolled in a selective 5-year program co-designed with IBM — one of the world’s leading technology companies. This collaboration provides hands-on exposure to enterprise software practices, cloud technologies, and professional engineering standards..""",
                    style: TextStyle(fontSize: 12),
                  ),SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey[300]!),

                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(itemModel.img),
                      ),
                      title: Text(itemModel.title),
                      subtitle: Text("${itemModel.des}"),
                    ),
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "price",
                        style: TextStyle(fontSize: 13, color: Colors.grey),
                      ),
                      Text(
                        "\$${itemModel.price} ",
                        style: TextStyle(fontSize: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    pro.add_to_cart(itemModel);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return CartScreen();
                        },
                      ),
                    );
                  },
                  child: Container(
                    width: 260,
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.blue[700],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          "Book now",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class details extends StatelessWidget {
  const details({
    super.key,
    required this.iconData,
    required this.title,
    required this.des,
  });
  final IconData iconData;
  final String title;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey[300]!),
      ),
      width: 150,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(iconData, color: Colors.blue),

            Text(title, style: TextStyle(fontSize: 18, color: Colors.grey)),
            Text(
              des,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
