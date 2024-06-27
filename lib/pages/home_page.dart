import 'package:appstore/model/product.dart';
import 'package:appstore/pages/update_product.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../model/product.dart';
import '/services/get_products_api.dart';
import '/model/Customcard.dart';

class Home_Page extends StatelessWidget {
  // Home_Page({super.key});
  Future<List<product>> items = get_products_api().get_products();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('New items'),
              SizedBox(
                width: 10,
              ),
              Icon(FontAwesomeIcons.cartPlus)
            ],
          )),
        ),
        body: FutureBuilder<List<product>>(
          future: items,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (snapshot.hasData) {
              // Assuming you want to display the products in a list
              return Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 100,
                    ),
                  ),
                  Expanded(
                    flex: 10000,
                    child: GridView.builder(
                        itemCount: snapshot.data!.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemBuilder: (context, index) {
                          product item = snapshot.data![index];
                          return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => UpdateProduct(
                                              id_item: item.id,
                                            )));
                              },
                              child: customecard(itme: item));
                        }),
                  ),
                ],
              );
            } else {
              return Center(child: Text('No products found'));
            }
          },
        ));
  }
}
/*Column(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 100,
            ),
          ),
          Expanded(
            flex: 99,
            child: GridView.builder(
                itemCount: 60,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 9 / 6.3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  return customecard();
                }),
          ),
        ],
      ),*/