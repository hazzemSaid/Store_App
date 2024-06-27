import 'dart:convert';
import 'package:flutter/widgets.dart';
import '/services/update_prodect.dart';
import 'package:flutter/material.dart';
import 'services/get_products_api.dart';
import 'model/product.dart';
import 'services/get_catogary.dart';
import 'services/get_product_by_category.dart';
import 'services/add_product.dart';
import '/pages/home_page.dart';
import '/pages/update_product.dart';

void main() async {
  runApp(MYapp());
}

class MYapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: <String, WidgetBuilder>{
      '/': (BuildContext context) => Home_Page(),
    });
  }
}
