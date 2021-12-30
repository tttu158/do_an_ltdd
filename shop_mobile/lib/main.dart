import 'package:do_an/bottom_navigator/bottom.dart';
import 'package:do_an/bottom_navigator/home.dart';
import 'package:do_an/bottom_navigator/profile.dart';
import 'package:do_an/bottom_navigator/shopping.dart';
import 'package:do_an/pages/cart.dart';
import 'package:do_an/user/detailbilldistroy.dart';
import 'package:do_an/user/detailuser.dart';
import 'package:do_an/user/forgetpass.dart';
import 'package:do_an/user/login.dart';
import 'package:do_an/user/orderdetail.dart';
import 'package:do_an/user/resondistroy.dart';
import 'package:do_an/user/signup.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bottom(),
      routes: {
        '/cart': (context) => CartPage(),
        '/login': (context) => LoginScreen(),
        '/signup': (context) => SignUp(),
         '/orderdetail':(context)=>OrderDetail(),
             '/resondistroy':(context)=>Resondistroy(),
              '/detailbilldistroy':(context)=>DetailBills(),
                 '/detailuser':(context)=>DetailUser(),
                     '/forgetpass':(context)=>ForgetPassPhone(),
      },
    );
  }
}
