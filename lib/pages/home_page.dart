import 'package:appstore/model/product.dart';
import 'package:appstore/pages/update_product.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import '../model/product.dart';
import '/services/get_products_api.dart';
import '/model/Customcard.dart';
import '/services/get_catogary.dart';

class Home_Page extends StatelessWidget {
  Future<List<product>> items = get_products_api().get_products();
  Future<List<String>> catogary = Allcatogary_service().getallcatogary();

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
              SizedBox(width: 10),
              Icon(FontAwesomeIcons.cartPlus),
            ],
          ),
        ),
      ),
      body: FutureBuilder(
        future: Future.wait([catogary, items]),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (snapshot.hasData) {
            List<String> categories = snapshot.data![0];
            List<product> products = snapshot.data![1];

            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    height: 100, // Set a fixed height for the categories list
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 222, 165, 165),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            categories[index],
                            style: TextStyle(fontSize: 20),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      product item = products[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => UpdateProduct(item: item),
                            ),
                          );
                        },
                        child: customecard(itme: item),
                      );
                    },
                    childCount: products.length,
                  ),
                ),
              ],
            );
          } else {
            return Center(child: Text('No products found'));
          }
        },
      ),
    );
  }
}
