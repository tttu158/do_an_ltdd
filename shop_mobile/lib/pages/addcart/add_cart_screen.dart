import 'package:flutter/material.dart';
class AddCartScreen extends StatefulWidget {
  const AddCartScreen({ Key? key }) : super(key: key);

  @override
  _AddCartScreenState createState() => _AddCartScreenState();
}

class _AddCartScreenState extends State<AddCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 70, left: 20, right: 20 ),
          child: Column( crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(children: [
              Image.asset('images/details/macbookgold.png',width: 150, height: 150,),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Row(
                  children: [
                    Text('Giá: '),
                    Text('23.200.000 vnđ',style: TextStyle(color: Colors.red),),
                  ],
                ),
                SizedBox(height: 10),
                Text('Kho: 12345'),
                
              ],)
            ],),
            SizedBox(height: 20),
              Text('MVFM2 – MacBook Air 2019 New (Gold/Corei5/R am 8GB/SSD 128GB/Touch ID'),
            SizedBox(height: 20),
              Text('Màu sắc:'),
            SizedBox(height: 20),
              Row(
                children: [
                  Column(
                    children: [
                      Image.asset('images/details/macbookgold.png',width: 100, height: 100,),
                      SizedBox(height: 10),
                      Text('Gold Color'),
                    ],
                  ),
                  SizedBox(width: 30),
                  Column(
                    children: [
                      Image.asset('images/details/macbookgold.png',width: 100, height: 100,),
                      SizedBox(height: 10),
                      Text('Gray Color'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),
              Center(child: ElevatedButton(style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red),), onPressed: (){
              Navigator.pushNamed(context,'/notification');
            }, child: Text('Thêm vào giỏ hàng')))
          ],),
        ),
      ),
    );
  }
}