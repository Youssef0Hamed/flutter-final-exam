import 'package:flutter/material.dart';
import 'package:gym_app/model/item_model.dart';
import 'package:gym_app/view%20model/item_provider.dart';
import 'package:gym_app/view/screens/class_details.dart';
import 'package:gym_app/view/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => ItemProvider(), child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
    );
  }
}
