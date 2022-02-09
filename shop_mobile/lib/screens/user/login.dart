import 'dart:math';
import 'package:do_an/bottom_navigator/user.dart';
import 'package:do_an/screens/user/detailuser.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
  title: Text('Đăng nhập'),
  backgroundColor: Colors.red,
 leading: IconButton(
    onPressed: () {
   Navigator.pushNamed(context, '/detailuser');
    },
    icon: Icon(Icons.keyboard_arrow_left),
  ),
),
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
           SizedBox(height: 50,),
            Container(
              child: Image.asset('images/icon/login.JPG'),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(width: 23,),
                Container(
                  width: 360,
                  height: 100,
                  child:  Padding(
                    padding: EdgeInsets.all(15),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                        ),
                      
                        prefixIcon:Icon(
                         (Icons.person),
                        ),
                        labelText: 'Username',
                        hintText: 'Tên đăng nhập',
                        labelStyle: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width:360,
              child:  Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                    ),
                    prefixIcon: Icon(
                      Icons.https,
                     
                    ),
                    suffixIcon: Icon(
                      Icons.visibility_off,
                      // color: Color(0xff2D3132),
                    ),
                    labelText: 'Password',
                    hintText: 'Mật khẩu',
                     labelStyle: TextStyle(
                            fontStyle: FontStyle.normal, fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 35,
              width: 200,
              child: GestureDetector(
                onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailUser()));
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
                          "ĐĂNG  NHẬP",
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
            const SizedBox(
              height: 30,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.start, children:  [
              SizedBox(
                width: 20,
              ),
              InkWell(child: Text("Bạn quên mật khẩu ?"),
              onTap: (){
                   Navigator.pushNamed(context, '/forgetpass');
              },),

              SizedBox(
                width: 100,
              ),    
              InkWell(
                child: Text(
                  "Đăng kí tài khoản ?",
                  style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w700),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/signup');
                },
              ),
            ]),
            Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
              SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 130,
              ),
              Text("----------   Hoặc   ---------- "),
            ]),
            Row(
              children: [
                SizedBox(width:88),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('images/icon/facebook.jpg', width: 50),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                ),
                 SizedBox(width:60),
                ElevatedButton(
                  onPressed: () {},
                  child: Image.asset('images/icon/google.jpg', width: 50),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}