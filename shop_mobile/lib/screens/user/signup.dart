import 'dart:math';
import 'package:do_an/api/api_signin.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

enum GioiTinh { nam, nu }
GioiTinh _gioitinh = GioiTinh.nam;

class _SignUpState extends State<SignUp> {
  // bool valuefirst = false;
  // bool valuesecond = false;
  var _secureText=true;
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  var fullnameController=TextEditingController();
  var addressController=TextEditingController();
  var sexController=TextEditingController();
  var phoneController=TextEditingController();
  final formkey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        key: formkey,
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
            height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:  TextFormField(
                controller: fullnameController,
                keyboardType: TextInputType.text,
               validator: (value) {
                 if(value!.isEmpty || RegExp( r'^[a-z A-Z,.\-]+$').hasMatch(value))
                 {
                   return "Họ và tên không được có số";
                 }
                 else{
                   return null;
                 }
               },
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Họ và tên......',
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 20)),
              ),
            ),
            SizedBox(height: 9),
            Container(
            height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:  TextField(
                controller: emailController,
                
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Địa chỉ mail......',
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 20)),
              ),
            ),
           Container(
            height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:  TextField(
                controller: phoneController,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Số điện thoại......',
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 20)),
              ),
            ),
           Container(
            height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:  TextField(
                controller: passwordController,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Mật khẩu......',
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 20)),
              ),
            ),
            Container(
              height: 70,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child:  TextField(
                controller: addressController,
                keyboardType: TextInputType.text,
                style: TextStyle(color: Colors.black87),
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Địa chỉ cụ thể',
                    hintStyle: TextStyle(color: Colors.black38, fontSize: 20)),
              ),
            ),
            Row(
              children: [
                SizedBox(width: 20,),
                Text("Giới tính",style: TextStyle(fontSize: 18),),
              ],
            ),

                RadioListTile<GioiTinh>(
                  title: const Text("Nam"),
                value: GioiTinh.nam ,
                groupValue: _gioitinh,
                 onChanged:(GioiTinh?value){
                   setState(() {
                     _gioitinh=value!;
                   });
                 }
                 ),
                  RadioListTile<GioiTinh>(
              title: const Text("Nữ"),
            value: GioiTinh.nu ,
            groupValue: _gioitinh,
             onChanged:(GioiTinh?value){
               setState(() {
                 _gioitinh=value!;
               });
             }
             ),
              
            


         
                const SizedBox(
                  height: 15,
                ),
                Container(
                  height: 35,
                  width: 200,
                  child: GestureDetector(
                    onTap: () async
                    {
                      int gioitinh=0;
                      if(_gioitinh==GioiTinh.nu)
                      gioitinh=1;
                      
                   await signin(emailController.text, passwordController.text, fullnameController.text,addressController.text, phoneController.text,gioitinh.toString(), context);
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
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Container(
                    height: 45,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset('images/icon/facebook.jpg', width: 30),
                        SizedBox(width: 15),
                        Text(
                          "Đăng nhập với facebook",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  child: Container(
                    height: 45,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    padding: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Image.asset('images/icon/google.jpg', width: 30),
                        SizedBox(width: 15),
                        Text(
                          "Đăng nhập với google",
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
    );
  }
}
