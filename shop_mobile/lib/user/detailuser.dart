import 'package:do_an/bottom_navigator/profile.dart';
import 'package:do_an/user/infomationuser.dart';
import 'package:do_an/user/orderdetail.dart';
import 'package:flutter/material.dart';

class DetailUser extends StatefulWidget {
  const DetailUser({Key? key}) : super(key: key);

  @override
  _DetailUserState createState() => _DetailUserState();
}

class _DetailUserState extends State<DetailUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chi tiết người dùng"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(width: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InfomationUser()));
                  },
                  child: Container(
                    height: 45,
                    width: 250,
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Text(
                          "Lý Tiểu Long",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(width: 50),
                        Icon(Icons.keyboard_arrow_right)
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'images/icon/user.png',
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(width: 40),
                Text(
                  "Đơn hàng của tôi",
                  style: TextStyle(fontSize: 17),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 29),
                      Column(children: <Widget>[
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [Image.asset('images/icon/pay.png')],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Chờ thanh "),
                        Text("toán"),
                      ]),
                      SizedBox(width: 25),
                      Column(children: <Widget>[
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Image.asset('images/icon/processing.jpg')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Đang xử "),
                        Text("lí"),
                      ]),
                      SizedBox(width: 25),
                      Column(children: <Widget>[
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Image.asset('images/icon/like_ib_1.png')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Đang vận "),
                        Text("chuyển"),
                      ]),
                      SizedBox(width: 25),
                      Column(children: <Widget>[
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade200,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Image.asset('images/icon/review.png')
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Text("Chờ đánh "),
                        Text("giá"),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 6,
            ),
           Container(
                  child: Row(
                  
                    children: [
                       SizedBox(width:20),
                      Image.asset('images/icon/gift.jpg', width: 30),
                       SizedBox(width:20),
                      Text("Đánh giá sản phẩm"),
                     SizedBox(width: 130),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          )),
                    ],
                  ),
                ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 6,
            ),
            Container(
                  child: Row(
                  
                    children: [
                       SizedBox(width:20),
                      Image.asset('images/icon/like_ib.png', width: 30),
                       SizedBox(width:20),
                      Text("Đánh giá sản phẩm"),
                     SizedBox(width: 130),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          )),
                    ],
                  ),
                ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 6,
            ),
            Container(
                  child: Row(
                  
                    children: [
                       SizedBox(width:20),
                      Image.asset('images/icon/purchased_product.png', width: 30),
                       SizedBox(width:20),
                      Text("Đánh giá sản phẩm"),
                     SizedBox(width: 130),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          )),
                    ],
                  ),
                ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 6,
            ),
            Container(
                  child: Row(
                  
                    children: [
                       SizedBox(width:20),
                      Image.asset('images/icon/like_ib.png', width: 30),
                       SizedBox(width:20),
                      Text("Chi tiết đơn hàng"),
                     SizedBox(width: 130),
                      IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/orderdetail');
                          },
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          )),
                    ],
                  ),
                ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 6,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Quan tâm",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(width: 35),
                      Column(children: <Widget>[
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(Icons.remove_red_eye),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("Đã xem"),
                      ]),
                      SizedBox(width: 25),
                      Column(children: <Widget>[
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("Yêu thích"),
                      ]),
                      SizedBox(width: 25),
                      Column(children: <Widget>[
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(Icons.local_mall),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("Mua sau"),
                      ]),
                      SizedBox(width: 25),
                      Column(children: <Widget>[
                        GestureDetector(
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(40.0),
                            ),
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 8,
                                ),
                                Icon(Icons.bungalow),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text("Theo dõi"),
                      ]),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey.shade300,
              thickness: 10,
            ),
          ],
        ),
      ),
    );
  }
}
