import 'package:appstore/model/product.dart';
import 'package:appstore/model/product.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/product.dart';
import '/services/get_products_api.dart';
import '/model/Customcard.dart';
import '/model/Customcard.dart';

class Home_Page extends StatelessWidget {
  // Home_Page({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(
            child: Text('New items'),
          ),
        ),
        body: GridView.builder(
            itemCount: 56,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemBuilder: (context, indx) {
              return customecard();
            }));
  }
}
