import 'dart:math';
import 'package:do_an/api/api_account.dart';
import 'package:do_an/models/account.dart';
import 'package:do_an/screens/user/edit_user.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InfomationUser extends StatefulWidget {
  final int id;
  const InfomationUser({Key? key, required this.id}) : super(key: key);

  @override
  _InfomationUserState createState() => _InfomationUserState(this.id);
}

class _InfomationUserState extends State<InfomationUser> {
  final int id;
  onGoBack(dynamic value) {
    setState(() {});
  }

  _InfomationUserState(this.id);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Account?>(
      future: information(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Scaffold(
            appBar: AppBar(
              title: Text("Chi tiết thông tin tài khoản"),
              backgroundColor: Colors.red,
              leading: IconButton(
                icon: Icon(Icons.keyboard_arrow_left),
                onPressed: () {
               Navigator.pushNamed(context, '/');
                },
              ),
            ),
            body: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              child: Column(
                children: [
                     
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                         
                          Text(
                            "Thông tin tài khoản",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                fontSize: 17),
                          ),
                     
                          SizedBox(
                            width: 150,
                          ),
                          
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Stack(children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://images.pexels.com/photos/3307758/pexels-photo-3307758.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=250"),
                            )),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            shape:BoxShape.circle,
                            border: Border.all(
                              width:4,
                            color: Theme.of(context).scaffoldBackgroundColor,
                            ),
                            color: Colors.green,
                          ),
                          child:InkWell(
                         
                          child:    Icon(Icons.edit, color: Colors.white),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(height: 20,),
                  Row(children: [
                    SizedBox(width:175),
                    InkWell(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 15,),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          EditUser(id: id))).then((onGoBack));
                            },
                          ),
                  ],),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Họ và tên",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          
                          Text(
                            snapshot.data?.fullName ?? "Trống",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Số điện thoại : ",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            width: 169,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            snapshot.data?.phone ?? "Trống",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Ngày sinh : ",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            width: 188,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Text(
                            snapshot.data?.birthday ?? "Chưa có",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Giới tính : ",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            "Nam",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Email : ",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          SizedBox(
                            width: 215,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            snapshot.data?.email ?? "",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                "Địa chỉ : ",
                                style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Column(
                            children: [
                              Text(
                                snapshot.data?.address ?? "",
                                style: TextStyle(fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          );
        }
        return Container();
      },
    );
  }
}
