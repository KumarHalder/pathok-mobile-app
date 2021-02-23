// import 'package:flutter/material.dart';
//
// class BottomBar extends StatefulWidget {
//   @override
//   _BottomBar createState() => _BottomBar();
// }
//
// class _BottomBar extends State<BottomBar> {
//   int _currentIndex = 0;
//
//   Widget build(BuildContext context) {
//     print(_currentIndex);
//     return BottomNavigationBar(
//       type: BottomNavigationBarType.fixed,
//       currentIndex: _currentIndex,
//       selectedItemColor: Colors.purple[900],
//       unselectedItemColor: Colors.grey[500],
//       selectedFontSize: 14,
//       unselectedFontSize: 14,
//       onTap: (value) {
//         // Respond to item press.
//         setState(() => _currentIndex = value);
//       },
//       items: [
//         BottomNavigationBarItem(
//           title: Text('menu'),
//           icon: Icon(Icons.menu),
//         ),
//         BottomNavigationBarItem(
//           title: Text('home'),
//           icon: Icon(Icons.home),
//         ),
//         BottomNavigationBarItem(
//           title: Text('book'),
//           icon: Icon(Icons.book),
//         ),
//         BottomNavigationBarItem(
//           title: Text('user'),
//           icon: Icon(Icons.supervised_user_circle),
//         ),
//       ],
//     );
//   }
// }
