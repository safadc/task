import 'package:flutter/material.dart';
import 'package:third_task/navigationbar.dart';
import 'package:third_task/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(
        slidableWidget: Home_page(),
        bottomNavigationBarWidget: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              Icons.favorite,
              size: 40,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.approval,
              size: 40,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.search,
              size: 40,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.graphic_eq,
              size: 40,
              color: Colors.deepPurple,
            ),
            Icon(
              Icons.settings,
              size: 40,
              color: Colors.deepPurple,
            )
          ],
        ),
      ),
    );
  }
}
