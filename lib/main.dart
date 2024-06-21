import 'dart:convert';

import 'package:flutter/material.dart';
import 'services/get_products_api.dart';
import 'model/product.dart';
import 'services/get_catogary.dart';
import 'services/get_product_by_category.dart';

List<product> products = [];
List<String> item = [];
void main() async {
  List<String> item = await Allcatogary_service().getallcatogary();
  products = await Get_product_by_category()
      .get_product_by_category(category_name: item[2]);

  runApp(MYapp());
}

class MYapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Card(child: Image.network(products[index].image));
          },
          itemCount: products.length,
        ),
      ),
    ));
  }
}
