import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class API {
  Future<dynamic> GET({required String url}) async {
    var response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return Null;
    }
  }

  Future<dynamic> POST(
      {required String url,
      @required dynamic Body,
      @required String? Token}) async {
    var response = await http.post(Uri.parse(url),
        body: Body, headers: {'Authorization': 'Bearer  $Token'});
    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      return Null;
    }
  }
}
