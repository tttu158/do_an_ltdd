import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Container(
              child: Image.asset('images/icon/logo.jpg'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: const TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(top: 14),
                    hintText: '  Họ và tên',
                    
                    hintStyle: TextStyle(color: Colors.black38,fontSize: 20)),
                    
              ),
            ),
            SizedBox(height:9),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(top: 14),
                    hintText: '  Địa chỉ mail ....',
                     hintStyle: TextStyle(color: Colors.black38,fontSize: 20)),
              ),
            ),
              Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  width: 199,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(top: 14),
                        hintText: '  Mật khẩu',
                        
                    hintStyle: TextStyle(color: Colors.black38,fontSize: 18)),
                  ),
                ),
                Container(
                  width: 190,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(top: 14),
                        hintText: '  Xác nhận mật khẩu',
                         
                       hintStyle: TextStyle(color: Colors.black38,fontSize: 18)),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(top: 14),
                    hintText: '  Chọn tỉnh thành phố',
                      suffixIcon:Icon(Icons.keyboard_arrow_down),
                     hintStyle: TextStyle(color: Colors.black38,fontSize: 20)),
              ),
            ),
             Row(
              children: [
                SizedBox(width: 10,),
                Container(
                  width: 199,
                  height:60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child:  TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black87),
                    
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                         
                        ),
                        contentPadding: EdgeInsets.only(top: 14),
                        hintText: '  Quận/Huyện',
                    suffixIcon:Icon(Icons.keyboard_arrow_down),
                      hintStyle: TextStyle(color: Colors.black38,fontSize: 18)),
                  ),
                 
                ),
                 Container(
                  width: 190,
                  height:60,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: const TextField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: Colors.black87),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(top: 14),
                        hintText: '  Phường/Xã',
                    suffixIcon:Icon(Icons.keyboard_arrow_down),
                      hintStyle: TextStyle(color: Colors.black38,fontSize: 18)),
                  ),
                 
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: const TextField(
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(top: 14),
                    hintText: '    Nhập địa chỉ cụ thể',
                    hintStyle: TextStyle(color: Colors.black38,fontSize: 20)),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 35,
              width: 200,
              child: GestureDetector(
                onTap: () {
                  Navigator.restorablePopAndPushNamed(context, '/login');
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      style: BorderStyle.solid,
                      width: 1.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Center(
                        child: Text(
                          "ĐĂNG KÍ",
                          style: TextStyle(
                            color: Colors.red,
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
            const SizedBox(
              height: 15,
            ),
            Text("------------ Hoặc ------------"),
                  SizedBox(height: 10,),
              GestureDetector(
              child: Container(
                height: 45,
                width:250,
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.black),
                  borderRadius:  BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Image.asset('images/icon/facebook.jpg',width:30),
                  SizedBox(width:15),
                  Text("Đăng nhập với facebook",style: TextStyle(fontSize: 15),),
                ],),
              ),
            ),
          SizedBox(height: 10,),
            GestureDetector(
              child: Container(
                height: 45,
                width:250,
                decoration: BoxDecoration(
                  border:Border.all(color: Colors.black),
                  borderRadius:  BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.all(10),
                child: Row(children: [
                  Image.asset('images/icon/google.jpg',width:30),
                  SizedBox(width:15),
                  Text("Đăng nhập với google",style: TextStyle(fontSize: 15),),
                ],),
              ),
            ),
            
            SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}
