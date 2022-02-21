//
import 'dart:math';
import 'package:do_an/api/api_account.dart';
import 'package:do_an/api/api_edituser.dart';
import 'package:do_an/models/account.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class EditUser extends StatefulWidget {
  final int id;
  const EditUser({Key? key, required this.id}) : super(key: key);

  @override
  _EditUserState createState() => _EditUserState(this.id);
}

class _EditUserState extends State<EditUser> {
  final int id;
  var _secureText = true;
  _EditUserState(this.id);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Account?>(
      future: information(id),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          var emailController =
              TextEditingController(text: snapshot.data!.email);
          var passwordController =
              TextEditingController(text: snapshot.data!.password);
          var fullnameController =
              TextEditingController(text: snapshot.data!.fullName);
          var addressController =
              TextEditingController(text: snapshot.data!.address);
          var phoneController =
              TextEditingController(text: snapshot.data!.phone);
          return Scaffold(
              appBar: AppBar(
                title: Text("Sửa thông tin cá nhân"),
                backgroundColor: Colors.red,
                leading: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.keyboard_arrow_left)),
              ),
              body: SingleChildScrollView(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Họ tên :",
                            style: TextStyle(fontSize: 19),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Container(
                        width: 380,
                        child: TextFormField(
                          controller: fullnameController,
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            prefixIcon: Icon(
                              (Icons.person),
                            ),
                            labelStyle: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Email :",
                            style: TextStyle(fontSize: 19),
                          ),
                        ],
                      ),
                      Container(
                        width: 380,
                        child: TextFormField(
                          controller: emailController,
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            prefixIcon: Icon(
                              (Icons.person),
                            ),
                            labelStyle: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Mật khẩu :",
                            style: TextStyle(fontSize: 19),
                          ),
                        ],
                      ),
                      Container(
                        width: 380,
                        child: TextFormField(
                          controller: passwordController,
                          obscureText: _secureText,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            prefixIcon: Icon(
                              (Icons.person),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(_secureText
                                    ? Icons.remove_red_eye
                                    : Icons.security),
                                onPressed: () {
                                  setState(() {
                                    _secureText = !_secureText;
                                  });
                                }),
                            labelStyle: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Số điện thoại :",
                            style: TextStyle(fontSize: 19),
                          ),
                        ],
                      ),
                      Container(
                        width: 380,
                        child: TextFormField(
                          controller: phoneController,
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            prefixIcon: Icon(
                              (Icons.person),
                            ),
                            labelStyle: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Text(
                            "Địa chỉ cụ thể :",
                            style: TextStyle(fontSize: 19),
                          ),
                        ],
                      ),
                      Container(
                        width: 380,
                        child: TextFormField(
                          controller: addressController,
                          obscureText: false,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(1.0),
                            ),
                            prefixIcon: Icon(
                              (Icons.person),
                            ),
                            labelStyle: TextStyle(
                                fontStyle: FontStyle.normal, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 35,
                        width: 200,
                        child: GestureDetector(
                          onTap: () {
                            edit(
                                emailController.text,
                                passwordController.text,
                                fullnameController.text,
                                addressController.text,
                                phoneController.text,
                                id.toString(),
                                context);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const <Widget>[
                                Center(
                                  child: Text(
                                    "Lưu thay đổi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'Montserrat',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )));
        }
        return Container();
      },
    );
  }
}
