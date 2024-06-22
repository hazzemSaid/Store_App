import '/helper/constast.dart';
import '../helper/api.dart';
import '/model/product.dart';

class get_products_api {
  Future<List<product>> get_products() async {
    dynamic jsonResponse = await API().GET(url: '$apibase/products');
    List<product> products = [];
    for (var i in jsonResponse) {
      products.add(product.fromJson(i));
    }
    return products;
  }
}
