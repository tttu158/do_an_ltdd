import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Canceledgoods extends StatefulWidget {
  const Canceledgoods({Key? key}) : super(key: key);

  @override
  _OrderDetailState createState() => _OrderDetailState();
}

class _OrderDetailState extends State<Canceledgoods> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Yêu thích",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Laptop",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 150,
                ),
                Text(
                  "Đã hủy",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
           Row(children: [
             Column(
              children: [
                Image.asset('images/product/3.jpg',width: 100,),
              ],
             ),
              Column(
              children: [
               Text("Laptop Acer Nitro 5 Gaming AN515 57 727J i7"),
               SizedBox(height: 10,),
               Row(children: [
                 Column(
                children: [
                   Text("Màu đen"),
                ],
                 ),
                 SizedBox(width: 150,),
                    Column(
                      children: [
                        Text("x1"),
                      ],
                    ),
               ],)
              ],
             ),
           ],),
          
           Row(
             children: [
                SizedBox(width: 220,),
               Text("28.790.000đ"),
               SizedBox(width: 10,),
              Text("28.790.000đ",style: TextStyle(color: Colors.red),),
             ],
           ),
           Divider(
              color: Colors.grey.shade200,
              thickness: 2,
            ),
            Row(children: [
              SizedBox(width: 20,),
              Text("1 sản phẩm"),
                SizedBox(width: 100,),
                Text("Thành tiền : ",style: TextStyle(fontSize: 18),),
                    Text("28.790.000đ",style: TextStyle(color: Colors.red,fontSize: 18),),
            ],),
              Divider(
              color: Colors.grey.shade200,
              thickness: 2,
            ),
        Row(
              
              children: [
                SizedBox(width:20),
                Text("Đã hủy bởi bạn",style: TextStyle(color: Colors.green),),
                  SizedBox(width: 200,),
             
              ],
            ),
             Divider(
              color: Colors.grey.shade300,
              thickness: 6,
            ),
               SizedBox(
              height: 10,
            ),
              Row(
              
              children: [
                SizedBox(width: 20,),
              Text("Không nhận được đánh giá",style: TextStyle(fontWeight: FontWeight.w300),),
                SizedBox(width:100),
                ElevatedButton(onPressed: (){},  style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),child: Text("Mua lại")),
              ],
            ),
              Divider(
              color: Colors.grey.shade300,
              thickness: 6,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Yêu thích",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Laptop",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 150,
                ),
                Text(
                  "Đã hủy",
                  style: TextStyle(color: Colors.red),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
           Row(children: [
             Column(
              children: [
                Image.asset('images/product/2.jpg',width: 100,),
              ],
             ),
              Column(
              children: [
               Text("Laptop Acer Nitro 5 Gaming AN515 57 727J i7"),
               SizedBox(height: 10,),
               Row(children: [
                 Column(
                children: [
                   Text("Màu đen"),
                ],
                 ),
                 SizedBox(width: 150,),
                    Column(
                      children: [
                        Text("x1"),
                      ],
                    ),
               ],)
              ],
             ),
           ],),
          
           Row(
             children: [
                SizedBox(width: 220,),
               Text("28.790.000đ"),
               SizedBox(width: 10,),
              Text("28.790.000đ",style: TextStyle(color: Colors.red),),
             ],
           ),
           Divider(
              color: Colors.grey.shade200,
              thickness: 2,
            ),
            Row(children: [
              SizedBox(width: 20,),
              Text("1 sản phẩm"),
                SizedBox(width: 100,),
                Text("Thành tiền : ",style: TextStyle(fontSize: 18),),
                    Text("28.790.000đ",style: TextStyle(color: Colors.red,fontSize: 18),),
            ],),
              Divider(
              color: Colors.grey.shade200,
              thickness: 2,
            ),
            Row(
              
              children: [
                SizedBox(width:20),
                Text("Đã hủy bởi bạn",style: TextStyle(color: Colors.green),),
                  SizedBox(width: 200,),
             
              ],
            ),
              Row(
              
              children: [
                SizedBox(width: 20,),
              Text("Không nhận được đánh giá",style: TextStyle(fontWeight: FontWeight.w300),),
                SizedBox(width:100),
                ElevatedButton(onPressed: (){},  style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              ),child: Text("Mua lại")),
              ],
            ),
               Divider(
              color: Colors.grey.shade200,
              thickness: 2,
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}
