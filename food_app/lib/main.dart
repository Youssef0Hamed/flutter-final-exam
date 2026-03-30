import 'package:flutter/material.dart';
import 'package:food_app/view%20model/app_provider.dart';
import 'package:food_app/view/screens/home_screen.dart';
import 'package:food_app/view/screens/restaurant_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => AppProvider(), child: const MyApp()),
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
