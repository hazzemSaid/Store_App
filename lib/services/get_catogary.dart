import 'package:http/http.dart' as http;
import 'dart:convert';

class Allcatogary_service {
  List<String> item = [];
  Future<List<String>> getallcatogary() async {
    var url = Uri.parse('https://fakestoreapi.com/products/categories');
    var response = await http.get(url);
    var jsonResponse = jsonDecode(response.body);
    for (var i in jsonResponse) {
      // item.add(i);
      item.add(i.toString());
    }
    return item;
  }
}
