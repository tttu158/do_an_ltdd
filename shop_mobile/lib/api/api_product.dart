import 'dart:convert';

import 'package:do_an/models/product.dart';

import 'package:http/http.dart' as http;

String url = 'http://10.0.2.2:8000/api/products';

Future<List<Product>> fetchFeaturedProduct() async {
  List<Product> lstPrd = [];
  try {
    final response = await http.get(Uri.parse(url + '/get-featured-product'));
    if (response.statusCode == 200) {
      List js = json.decode(response.body);
      lstPrd = js.map((e) => Product.fromJson(e)).toList();
    }
  } catch (_) {}
  return lstPrd;
}

Future<List<Product>> fetchNewProduct() async {
  List<Product> lstPrd = [];
  try {
    final response = await http.get(Uri.parse(url + '/get-new-product'));
    if (response.statusCode == 200) {
      List js = json.decode(response.body);
      lstPrd = js.map((e) => Product.fromJson(e)).toList();
    }
  } catch (_) {}
  return lstPrd;
}
