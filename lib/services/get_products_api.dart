import 'dart:convert';

import 'package:http/http.dart' as http;
import '/model/product.dart';

class get_products_api {
  Future<List<product>> get_products() async {
    var url = Uri.parse('https://fakestoreapi.com/products');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      List<product> products = [];
      for (var i in jsonResponse) {
        products.add(product.fromJson(i));
      }
      return products;
    } else {
      throw Exception('Failed to load products');
    }
  }
}
