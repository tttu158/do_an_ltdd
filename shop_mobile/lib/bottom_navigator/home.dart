import 'package:badges/badges.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:do_an/api/api_product.dart';
import 'package:do_an/models/product.dart';
import 'package:flutter/cupertino.dart';
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

  @override
  Widget build(BuildContext context) {
    Widget buildFeaturedProduct() => FutureBuilder<List<Product>>(
        future: fetchFeaturedProduct(),
        builder: (context, snap) {
          if (snap.hasError) {
            return Center(
              child: Text(snap.hasError.toString()),
            );
          }
          return snap.hasData
              ? GridView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 230),
                  itemCount: snap.data!.length,
                  itemBuilder: (context, index) {
                    return buildProduct(
                        snap.data![index].img![0].path.toString(),
                        snap.data![index].name.toString(),
                        int.parse(snap.data![index].price.toString()),
                        context);
                  })
              : const Center(
                  child: CircularProgressIndicator(),
                );
        });
    Widget buildNewProduct() => FutureBuilder<List<Product>>(
        future: fetchNewProduct(),
        builder: (context, snap) {
          if (snap.hasError) {
            return Center(
              child: Text(snap.hasError.toString()),
            );
          }
          return snap.hasData
              ? GridView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      mainAxisExtent: 230),
                  itemCount: snap.data!.length,
                  itemBuilder: (context, index) {
                    return buildProduct(
                        snap.data![index].img![0].path.toString(),
                        snap.data![index].name.toString(),
                        int.parse(snap.data![index].price.toString()),
                        context);
                  })
              : const Center(
                  child: CircularProgressIndicator(),
                );
        });
    //     Positioned(
    //         top: 7,
    //         left: 160,
    //         child: InkWell(
    //           onTap: () {},
    //           child: const Icon(
    //             Icons.favorite_border,
    //           ),
    //         )),
    //   ]);
    // });

    Widget buildBanner() => CarouselSlider.builder(
        itemCount: imgBanners.length,
        itemBuilder: (context, index, realIndex) {
          final imgBanner = imgBanners[index];
          return buildImg(imgBanner);
        },
        options: CarouselOptions(height: 150, autoPlay: true));
    return GestureDetector(
      //huy keyboard khi bam ngoai man hinh
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'images/logo.png',
                  ),
                ),
              ),
              Container(
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
              const SizedBox(
                height: 10,
              ),
              buildBanner(),
              const SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.grey.shade300,
                thickness: 5,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Sản phẩm nổi bật',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Xem tất cả',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              buildFeaturedProduct(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Sản phẩm mới',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Xem tất cả',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
              buildNewProduct()
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildImg(String urlImage) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(urlImage), fit: BoxFit.cover),
          color: Colors.green,
          borderRadius: BorderRadius.circular(10)),
    );
Widget buildProduct(
        String urlimg, String name, int price, BuildContext context) =>
    GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/details');
        },
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(-1, 3), // changes position of shadow
                ),
              ]),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: CachedNetworkImage(
                  imageUrl: "http://10.0.2.2:8000/storage/" + urlimg,
                  width: 140,
                  placeholder: (context, url) => const Center(
                    child: CupertinoActivityIndicator(),
                  ),
                  errorWidget: (context, url, error) => Container(
                    color: Colors.black12,
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    'Giá:$price',
                  ),
                ],
              ))
            ],
          ),
        ));
