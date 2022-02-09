import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final imgProducts = [
    'images/product/1.jpg',
    'images/product/2.jpg',
    'images/product/3.jpg'
  ];
  final nameProduct = [
    'MSI Katana Gaming GF66 11UC',
    'Asus ROG Zephyrus G14 Alan Walker ',
    'Acer Nitro 5 Gaming AN515 57 727J ',
  ];

  final priceProduct = <int>[999999, 9999999, 9999999];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(child: Text('Giỏ hàng')),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        ListView.builder(
          shrinkWrap: true,
          itemCount: imgProducts.length,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: [
                  Image.asset(
                    imgProducts[index],
                    width: 150,
                    height: 150,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameProduct[index],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text('Giá:' + priceProduct[index].toString(),
                          style: TextStyle(
                            color: Colors.red,
                          )),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.remove)),
                          Text('1'),
                          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.delete)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 5,
        ),
        Text(
          'Tổng tiền: 99999999999',
          style: TextStyle(fontSize: 20, color: Colors.green),
        ),
        Align(
          child: InkWell(
            onTap: () {},
            child: Container(
              child: Align(
                child: Text(
                  "Mua hàng",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(10)),
            ),
          ),
        )
      ])),
    );
  }
}
