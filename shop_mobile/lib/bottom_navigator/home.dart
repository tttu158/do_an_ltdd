import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an/bottom_navigator/shopping.dart';
import 'package:do_an/brand/macbook.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final txtTimKiem = TextEditingController();
  final imgBanners = [
    'images/banner/banner.png',
    'images/banner/banner1.png',
    'images/banner/banner2.png'
  ];

  final imgProducts = [
    'images/product/1.jpg',
    'images/product/2.jpg',
    'images/product/3.jpg',
    'images/product/4.jpg'
  ];
  final nameProduct = [
    'MSI Katana Gaming GF66 11UC i7 11800H',
    'Asus ROG Zephyrus G14 Alan Walker R9 5900HS ',
    'Acer Nitro 5 Gaming AN515 57 727J i7 11800H',
    'Lenovo Yoga Slim 7 14ITL05 i5 1135G7 '
  ];

  final priceProduct = <int>[999999, 9999999, 9999999, 9999999];

  @override
  Widget build(BuildContext context) {
    Widget buildProduct() => Container(
          child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 20.0),
              itemCount: imgProducts.length,
              itemBuilder: (context, index) {
                return Stack(children: [
                  Container(
                    width: 200,
                    margin: const EdgeInsets.all(5.0),
                    color: Colors.grey.shade200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          child: Image(
                            image: AssetImage(imgProducts[index]),
                            width: 100,
                            height: 100,
                          ),
                        ),
                        Text(nameProduct[index],
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                        Text(
                          'Giá: ' + priceProduct[index].toString() + 'đ',
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 7,
                      left: 160,
                      child: InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.favorite_border,
                        ),
                      )),
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.add_circle,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                  )
                ]);
              }),
        );

    Widget brand = Column(
      children: [
        Row(children: [
          buildImgButton(context, 'images/brand/macbook.png', MacBook()),
          buildImgButton(context, 'images/brand/asus.png', MacBook()),
          buildImgButton(context, 'images/brand/hp.png', MacBook()),
          buildImgButton(context, 'images/brand/lenovo.png', MacBook()),
        ]),
        Row(
          children: [
            buildImgButton(context, 'images/brand/acer.png', MacBook()),
            buildImgButton(context, 'images/brand/dell.png', MacBook()),
            buildImgButton(context, 'images/brand/msi.png', MacBook()),
            buildImgButton(context, 'images/brand/lg.png', MacBook()),
          ],
        )
      ],
    );
    return GestureDetector(
      //huy keyboard khi bam ngoai man hinh
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 50,
                height: 50,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/logo.png',
                  ),
                ),
              ),
              SizedBox(
                width: 350,
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                            prefix: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                            ),
                            label: Text('Bạn tìm gì?')),
                        controller: txtTimKiem,
                      ),
                    ),
                    Badge(
                      badgeContent: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/cart');
                          },
                          icon: const Icon(Icons.shopping_cart)),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: CarouselSlider.builder(
                    itemCount: imgBanners.length,
                    itemBuilder: (context, index, realIndex) {
                      final imgBanner = imgBanners[index];
                      return buildImg(imgBanner, index);
                    },
                    options: CarouselOptions(height: 200, autoPlay: true)),
              ),
              const SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 5,
              ),
              brand,
              Divider(
                color: Colors.grey.shade300,
                thickness: 5,
              ),
              const SizedBox(
                height: 5,
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Danh mục nổi bật',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              buildProduct(),
              Divider(
                color: Colors.grey.shade300,
                thickness: 5,
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 5.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Gợi ý hôm nay',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )),
              buildProduct(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildImg(String urlImage, int index) => Container(
    margin: const EdgeInsets.symmetric(horizontal: 12),
    color: Colors.grey,
    width: double.infinity,
    child: Image(
      image: AssetImage(urlImage),
      fit: BoxFit.cover,
    ));
