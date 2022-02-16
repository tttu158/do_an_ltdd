import 'dart:math';
import 'package:do_an/api/api_account.dart';
import 'package:do_an/models/account.dart';
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
              leading: Icon(Icons.keyboard_arrow_left),
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
                          Text(
                            "Sửa",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
                                fontSize: 17),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
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
                            snapshot.data?.fullName ?? "",
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
                            snapshot.data!.phone!,
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
                            width: 195,
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                           snapshot.data?.birthday??"Chưa có",
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
                            width: 249,
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
                            width: 155,
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
                                snapshot.data?.address??"",
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
