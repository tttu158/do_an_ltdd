import 'dart:math';

import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(child: Text("Danh mục")),
        backgroundColor: Colors.redAccent,
      ),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 100,
            child: ListView.builder(
              itemCount: lstBrand.length,
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Text(
                    lstBrand[index].brand,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Container(
            width: 311,
            child: ListView.builder(
                itemCount: lstBrand.length,
                itemBuilder: (context, index) {
                  BRD brd = lstBrand[index];
                  bool selected = selectedIndex == index;
                  if (selected) {
                    return subBrand(brd.subBrand);
                  }
                  return invisbleSubBrand();
                }),
          )
        ],
      ),
    );
  }

  Widget subBrand(List<String> subNames) {
    return Container(
      height: 250,
      alignment: Alignment.center,
      child: ListView.builder(
          itemCount: subNames.length,
          itemBuilder: (context, index) {
            String subBrand = subNames[index];
            return InkWell(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Text(
                  subBrand,
                  textAlign: TextAlign.center,
                  style: const TextStyle(),
                ),
              ),
            );
          }),
    );
  }

  Widget invisbleSubBrand() {
    return Container(
      height: 45,
    );
  }

  List<BRD> lstBrand = [
    BRD("Asus", [
      "Asus ROG Gaming series",
      "Asus TUF Gaming Series",
      "Asus Zephyrus Gaming",
      "Laptop Asus Zenbook",
      "Laptop Asus Vivobook",
      "Laptop Asus ExpertBook",
      "Laptop Asus ProArt"
    ]),
    BRD("MSI", [
      "MSI Gaming GF Series",
      "MSI GE Series",
      "MSI Modern 14 Series",
      "MSI Prestige Series",
      "MSI Stealth 15 Series",
      "MSI Bravo Series"
    ]),
    BRD("Lenovo", [
      "Laptop Lenovo ThinkPad",
      "Laptop Lenovo IdeaPad",
      "Laptop Lenovo Yoga",
      "Laptop Lenovo Legion",
      "Laptop Lenovo ThinkBook",
      "Lenovo ideapad gaming 3",
      "Laptop Lenovo V15"
    ]),
  ];
}

class BRD {
  final String brand;
  final List<String> subBrand;
  BRD(this.brand, this.subBrand);
}
