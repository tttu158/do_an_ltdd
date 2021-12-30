import 'package:flutter/material.dart';
class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
       Icon(Icons.arrow_back_ios,color: Colors.grey,size: 30,),
      title:TextField( decoration: InputDecoration(hintText: 'Macbook Air 2019....'), 
      ),
      backgroundColor: Colors.red,
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Icon(Icons.arrow_back_ios,color: Colors.grey,size: 20,),
              Image.asset('images/details/macbookgold.png'),
              Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),          
            ],
          ),
          Container ( width:30, child: Text('1/5'),
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
            color: Colors.black,
            blurRadius: 0.5),
             ],),
          ),
          SizedBox(height: 20),
          Text('MVFM2 – MacBook Air 2019 New (Gold/Corei5/R am 8GB/SSD 128GB/Touch ID'),
          SizedBox(height: 20),
          Row(
            children: [
              Text('Lượt đánh giá: '),
              Icon(Icons.star_outline,),
              Icon(Icons.star_outline,),
              Icon(Icons.star_outline,),
              Icon(Icons.star_outline,),
              Icon(Icons.star_outline,),
              SizedBox(width: 30,),
              Icon(Icons.favorite_border_outlined,),
              SizedBox(width: 10,),
              Icon(Icons.share,),
            ],
          ),
          Row(
            children: [
              Icon(Icons.shopping_cart,color: Colors.grey,size: 20,),
              SizedBox(width: 10,),
              Text('104 Lượt mua'),
              SizedBox(width: 100,),
              Text('Còn 600 sản phẩm',style: TextStyle(color: Colors.yellow),),
            ],
          ),
          SizedBox(height: 10,),
          Container(height: 10,color: Colors.grey,),
          SizedBox(height: 10,),
          Row(children: [
            Text('15 Mã Giảm Giá'),
            SizedBox(width: 10,),
            Container(child: Center(child: Text('Giảm 49k')),height: 20,color: Colors.yellow,),
            SizedBox(width: 10,),
            Container(child: Center(child: Text('Giảm 109k')),height: 20,color: Colors.yellow,),
            SizedBox(width: 15,),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),   
            SizedBox(height: 10,),
          ],),
          SizedBox(height: 10,),
           Row( children: [
             Text('1 quà tặng kèm'),
            SizedBox(width: 13,),
            Image.asset('images/details/balo.png',width: 50,),
            SizedBox(width: 15,),
            Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),   
           ],),
           Container(height: 10,color: Colors.grey,),
           SizedBox(height: 10,),
           Row(children: [
             Text('Giao đến: Huyện Giồng Trôm,xã Sơn...'),
           ],),
           SizedBox(height: 10,),
           Container(height: 10,color: Colors.grey,),
           SizedBox(height: 10,),
           Column( crossAxisAlignment: CrossAxisAlignment.start, children: [
               Text('Sản phẩm tương tự'),
           SizedBox(height: 10,),
           Row(children: [
             Image.asset('images/details/acer.png',width: 180,),
             SizedBox(width: 20,),
             Image.asset('images/details/asus.png',width: 180,),
           ],)
           ],
           ),
           SizedBox(height: 10,),
           Container(height: 5,color: Colors.grey,),
           SizedBox(height: 10,),
           Row(
             children: [
               Flexible(
                 child: Column( children: [
                   Icon(Icons.sync,color: Colors.grey,size: 30,),   
                   Text('Hoàn tiền 111% nếu hàng giả!!!'),
                 ],
                 ),
               ),
               SizedBox(width: 10,),
                  Flexible(
                    child: Column( children: [
                                   Icon(Icons.thumb_up_alt,color: Colors.grey,size: 30,),   
                                   Text('Thông tin bảo hành'),
                                 ],
                                 ),
                  ),
                  SizedBox(width: 10,),
                   Flexible(
                     child: Column( children: [
                                    Icon(Icons.sync,color: Colors.grey,size: 30,),   
                                    Text('Đổi trả trong 7 ngày nếu sản phẩm lỗi'),
                                  ],
                                  ),
                   ),
             ],
           ),
           SizedBox(height: 10,),
           Center(child: Text('XEM CHI TIẾT',style: TextStyle(color: Colors.blue),)),
           SizedBox(height: 10,),
           Container(height: 10,color: Colors.grey,),
           SizedBox(height: 10,),
              Row(
            children: [
              Text('Danh mục: '),
              SizedBox(width: 30,),
              Text('...',style: TextStyle(color: Colors.blue),),
              SizedBox(width: 5,),
              Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
              SizedBox(width: 5,),
              Text('LAPTOP',style: TextStyle(color: Colors.blue),),
              Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
              SizedBox(width: 5,),
              Text('MACBOOK',style: TextStyle(color: Colors.blue),),
            ],
          ),
          SizedBox(height: 2,),
           Row(
            children: [
              Text('Bộ xử lý: '),
              SizedBox(width: 30,),
              Text('1.6 GHz Intel Core i5 Dual-Core',),
            ],
          ),
          SizedBox(height: 10,),
                Row(
            children: [
              Text('Card Màn Hình: '),
              SizedBox(width: 30,),
              Text('1.6 GHz Intel Core i5 Dual-Core ,...',),
            ],
          ),
          SizedBox(height: 10,),
                Row(
            children: [
              Text('Bộ nhớ: '),
              SizedBox(width: 30,),
              Text('8GB of 2133 MHz',),
            ],
          ),
            SizedBox(height: 10,),
            Center(
                    child: Row( mainAxisAlignment: MainAxisAlignment.center , children: [
                     Text('Xem tất cả',style: TextStyle(color: Colors.blue),),
                     Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 20,),
                   ],),
                 ),
           SizedBox(height: 10,),
           Container(height: 10,color: Colors.grey,),
           SizedBox(height: 10,),
           Text('Mô tả sản phẩm',style: TextStyle(fontSize: 30,color: Colors.red),),
           SizedBox(height: 10,),
          Column(children: [
               Text('Bổ sung tính năng True Tone, màn hình Retina sắc nét',style: TextStyle(fontSize: 20,color: Colors.black),),
               SizedBox(height: 10,),
               Text('Với màn hình Retina, độ phân giải 2560 x 1600 cho hơn 4 triệu điểm ảnh MacBook Air 2019 i5 mang đến chất lượng hình ảnh chi tiết và chân thực hơn bao giờ hết.',style: TextStyle(fontSize: 15,color: Colors.black),),
               SizedBox(height: 10,),
               Text('Siêu mỏng, siêu nhẹ',style: TextStyle(fontSize: 20,color: Colors.black),),
               SizedBox(height: 10,),
               Text('MacBook Air 2019 giữ nguyên thiết kế với thế hệ 2018. Máy được làm từ vỏ nhôm nguyên khối, pin liền với độ dày 15.6 mm và khối lượng 1.25 kg. Đặc biệt hơn, chiếc Macbook này được làm từ nhôm tái chế có độ bền cao và có thể bảo vệ môi trường.',style: TextStyle(fontSize: 15,color: Colors.black),),
               SizedBox(height: 10,),
               Text('Cấu hình khỏe, xử lý văn phòng, Photoshop mượt mà',style: TextStyle(fontSize: 20,color: Colors.black),),
               SizedBox(height: 10,),
               Text('Laptop Apple MacBook Air 2019 được trang bị bộ xử lý Intel Core i5 và bộ nhớ 8 GB, card đồ họa tích hợp Intel UHD Graphics 617 cho phép bạn hoạt động trơn tru ngay cả khi mở nhiều ứng dụng hoạt động cùng lúc và thoải mái trong việc duyệt web, chơi game, sử dụng mượt mà các thao tác từ phần mềm Office cho đến Photoshop, AI… Laptop Apple MacBook Air 2019',style: TextStyle(fontSize: 15,color: Colors.black),),
          ],),
          SizedBox(height: 10,),
          Row(children: [
            Column(children: [
            Icon(Icons.question_answer,color: Colors.grey,size: 50,),
            Text('Chat')
            ],),
            SizedBox(width: 5,),
            Column(children: [
            Icon(Icons.phone_in_talk,color: Colors.grey,size: 50,),
            Text('Call')
            ],),
            SizedBox(width: 5,),
            Column(children: [
            Icon(Icons.add_shopping_cart,color: Colors.grey,size: 50,),
            Text('Add Cart')
            ],),
            SizedBox(width: 15,),
            Center(child: ElevatedButton(style: ButtonStyle( minimumSize: MaterialStateProperty.all(const Size(170, 50)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Colors.red),), onPressed: (){
          Navigator.pushNamed(context,'/add_cart_screen');
        }, child: Text('Mua Ngay',style: TextStyle(fontSize: 30),)))
          ],)
        ],
      ),
    );
  }
}