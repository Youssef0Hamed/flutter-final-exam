import 'package:flutter/material.dart';
import 'package:model_3/view/constans/nav_bar.dart';

class Final_screen extends StatelessWidget {
  const Final_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Fuck you "),
      ),
            bottomNavigationBar: NavBar(),

    );
  }
}