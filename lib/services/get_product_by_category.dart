import '/model/product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Get_product_by_category {
  Future<List<product>> get_product_by_category(
      {required String category_name}) async {
    List<product> products = [];
    var url =
        Uri.parse('https://fakestoreapi.com/products/category/$category_name');
    var response = await http.get(url);
    var jsondata = jsonDecode(response.body);
    for (var i in jsondata) {
      product p = product.fromJson(i);
      products.add(p);
    }
    return products;
  }
}
