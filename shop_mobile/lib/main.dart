import 'package:do_an/screens/start.dart';
import 'package:do_an/providers/cart_provider.dart';
import 'package:do_an/screens/user/detailbilldistroy.dart';
import 'package:do_an/screens/user/login.dart';
import 'package:do_an/screens/user/orderdetail.dart';
import 'package:do_an/screens/user/resondistroy.dart';
import 'package:do_an/screens/user/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const StartScreen(),
        routes: {
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignUp(),
          '/orderdetail': (context) => const OrderDetail(),
          '/resondistroy': (context) => const Resondistroy(),
          '/detailbilldistroy': (context) => const DetailBills(),
        },
      ),
    );
  }
}
