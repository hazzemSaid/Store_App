import 'dart:convert';

import 'package:flutter/material.dart';
import '/helper/api.dart';
import '/model/product.dart';

class UpdateProdect {
  Future<dynamic> updateProdect(
      {required String title,
      required String description,
      required String price,
      required String image,
      required int id,
      required String category}) async {
    Map<String, dynamic> jsonResponse = await API().PUT(body: {
      'title': title,
      'description': description,
      'price': price,
      'image': image,
      'category': category,
      'id': id.toString(),
    }, id: id);
    print(product.fromJson(jsonResponse));
    return product.fromJson(jsonResponse);
  }
}
