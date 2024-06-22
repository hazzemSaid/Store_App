import '/helper/api.dart';
import '/helper/constast.dart';

class Allcatogary_service {
  List<String> item = [];
  Future<List<String>> getallcatogary() async {
    dynamic jsonResponse = await API().GET(url: '$apibase/products/categories');
    for (var i in jsonResponse) {
      // item.add(i);
      item.add(i.toString());
    }
    return item;
  }
}
