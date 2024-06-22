import '../helper/api.dart';
import '/model/product.dart';
import '/helper/constast.dart';

class Get_product_by_category {
  Future<List<product>> get_product_by_category(
      {required String category_name}) async {
    List<product> products = [];
    dynamic jsondata =
        await API().GET(url: '$apibase/products/category/$category_name');
    for (var i in jsondata) {
      product p = product.fromJson(i);
      products.add(p);
    }
    return products;
  }
}
