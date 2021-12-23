
import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an/bottom_navigator/shopping.dart';
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

  @override
  Widget build(BuildContext context) {
    Widget buildProduct() => Container(
  height: 350,
  child: GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 20.0),
    itemCount: imgProducts.length,
    itemBuilder: (context, index) {
      return Container(
        child: Column(
          children: [
          Image(image: AssetImage(imgProducts[index]),
          width: 100,
          height: 100,),
          Text(nameProduct[index]),
          ],
        ),
      );
    }
  ),
);
    return GestureDetector(
      //huy keyboard khi bam ngoai man hinh
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Align(
                alignment: Alignment.center,
                child: Image.asset('images/logo.png',),
              ),
            ),
            Container(
              width: 350,
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: TextField(
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))
                    ),
                    label: Text('Bạn tìm gì hôm nay?'),
                  ),
                  controller: txtTimKiem,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: CarouselSlider.builder(
                itemCount: imgBanners.length, 
                itemBuilder: (context, index, realIndex){
                  final imgBanner = imgBanners[index];
                  return buildImg(imgBanner, index);
                },
                options: CarouselOptions(
                  height: 200,
                  autoPlay: true
                )
                ),
            ),
            const SizedBox(
              height: 5,
            ),
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
              )
            ),
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
              )
            ),
            buildProduct(),
          ],),
        ),
      ),
    );
  }
}
Widget buildImg(String urlImage, int index) => Container(
  margin: const EdgeInsets.symmetric(horizontal: 12),
  color: Colors.grey,
  width: double.infinity,
  child: Image(image: AssetImage(urlImage),fit: BoxFit.cover,)
);

