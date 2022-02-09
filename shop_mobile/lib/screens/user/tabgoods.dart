import 'package:do_an/screens/order/beingtransported.dart';
import 'package:do_an/screens/order/canceledgoods.dart';
import 'package:do_an/screens/order/delivered.dart';
import 'package:do_an/screens/order/returngoods.dart';
import 'package:do_an/screens/order/tabconfirming.dart';
import 'package:do_an/screens/order/waitingthegoods.dart';
import 'package:flutter/material.dart';

class Tabgoods extends StatefulWidget {
  @override
  _TabgoodsState createState() => _TabgoodsState();
}

class _TabgoodsState extends State<Tabgoods> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Đơn mua"),
            //centerTitle: true,
            leading: IconButton(
              icon: Icon(Icons.keyboard_arrow_left),
              onPressed: () {},
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.notifications_none),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {},
              )
            ],
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.red],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
              ),
            ),
            bottom: TabBar(
              isScrollable: true,
              //isScrollable: true,
              indicatorColor: Colors.white,
              indicatorWeight: 3,
              tabs: [
                Tab(text: 'Chờ xác nhận'),
                Tab(text: 'Chờ lấy hàng'),
                Tab(text: 'Đang giao'),
                Tab(text: 'Đã giao'),
                Tab(text: 'Đã hủy'),
                Tab(text: 'Trả hàng'),
              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          body: TabBarView(
            children: [
              TabConfirming(),
              Waitingthegoods(),
              BeingTransported(),
              Delivered(),
              Canceledgoods(),
              Returngoods(),
            ],
          ),
        ),
      );

  Widget buildPage(String text) => Center(
        child: Text(
          text,
          style: TextStyle(fontSize: 28),
        ),
      );
}
