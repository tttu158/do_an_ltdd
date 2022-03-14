import 'package:do_an/bottom_navigator/bottom.dart';
import 'package:do_an/bottom_navigator/home.dart';
import 'package:do_an/bottom_navigator/user.dart';
import 'package:do_an/screens/cart.dart';
import 'package:do_an/screens/products/addcart/add_cart_screen.dart';
import 'package:do_an/screens/products/addcart/notification.dart';
import 'package:do_an/screens/products/detail.dart';
import 'package:do_an/screens/start.dart';
import 'package:do_an/screens/user/detailbilldistroy.dart';
import 'package:do_an/screens/user/detailuser.dart';
import 'package:do_an/screens/user/login.dart';
import 'package:do_an/screens/user/orderdetail.dart';
import 'package:do_an/screens/user/resondistroy.dart';
import 'package:do_an/screens/user/signup.dart';
import 'package:do_an/screens/user/tabgoods.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StartScreen(), routes: {
      '/cart': (context) => CartPage(),
      '/login': (context) => const LoginScreen(),
      '/signup': (context) => const SignUp(),
      '/orderdetail': (context) => const OrderDetail(),
      '/resondistroy': (context) => const Resondistroy(),
      '/detailbilldistroy': (context) => const DetailBills(),
      '/add_cart_screen': (context) => const AddCartScreen(),
      '/notification': (context) => const NotificationCart(),
      '/details': (context) => const ProductDetailsScreen(),
    });
  }
}
