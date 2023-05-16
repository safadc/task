// import 'package:flutter/material.dart';
// import 'package:third_task/pages/home_page.dart';

// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({Key key}) : super(key: key);

//   @override
//   State<BottomNavigation> createState() => _BottomNavigationState();
// }

// class _BottomNavigationState extends State<BottomNavigation> {
//   int currentIndex = 0;

//   List<Widget> widgets = [
//     Home_page(),
//     Container(),
//     Container(),
//     Container(),
//     Container(),
//   ];
  

//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: widgets[currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         type: BottomNavigationBarType.shifting,
//         selectedItemColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//         currentIndex: currentIndex,
//         onTap: (index) {
//           currentIndex = index;
//           setState(() {});
//         },
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         items: [
//           BottomNavigationBarItem(
//             icon: iconWidget(Icons.favorite, 0),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: iconWidget(Icons.image, 1),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: iconWidget(Icons.search, 2),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: iconWidget(Icons.settings, 3),
//             label: "",
//           ),
//           BottomNavigationBarItem(
//             icon: iconWidget(Icons.graphic_eq, 3),
//             label: "",
//           ),
//         ],
//       ),
//     );
//   }

//   Widget iconWidget(IconData icon, int i) {
//     if (currentIndex == i) {
//       return CircleAvatar(
//         backgroundColor: Colors.deepPurple,
//         child: Icon(icon),
//       );
//     }
//     return Icon(icon);
//   }
// }
