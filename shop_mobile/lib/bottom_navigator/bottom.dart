import 'package:do_an/bottom_navigator/category.dart';
import 'package:do_an/bottom_navigator/home.dart';
import 'package:do_an/bottom_navigator/user.dart';
import 'package:do_an/screens/user/signup.dart';

import 'package:flutter/material.dart';

class Bottom extends StatefulWidget {
  Bottom({Key? key}) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int currentInex = 0;
  final pages = [
    HomePage(),
    CategoryScreen(),
    UserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentInex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentInex,
        iconSize: 30,
        selectedItemColor: Colors.black,
        onTap: (index) => setState(() => currentInex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Trang chủ'),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Mua hàng',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Người dùng')
        ],
      ),
    );
  }
}
