import 'package:appstore/model/product.dart';
import 'package:appstore/widgets/custombutton.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import '/widgets/customtextfild.dart';
import '/services/update_prodect.dart';

class UpdateProduct extends StatelessWidget {
  static String id = 'updatepage';
  product? item;
  String? title, description, image;
  dynamic price;
  UpdateProduct({required this.item});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("update product"),
            Icon(FontAwesomeIcons.upload),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          fild(
              type: "title",
              onchanged: (val) {
                title = val;
              }),
          SizedBox(
            height: 10,
          ),
          fild(
              type: "price",
              onchanged: (val) {
                price = val;
              }),
          SizedBox(
            height: 10,
          ),
          fild(
              type: "description",
              onchanged: (val) {
                description = val;
              }),
          SizedBox(
            height: 10,
          ),
          fild(
              type: "image",
              onchanged: (val) {
                image = val;
              }),
          SizedBox(
            height: 10,
          ),
          custombutton(
              type: "uplade",
              onTap: () async {
                try {
                  product items = await UpdateProdect().updateProdect(
                      title: title!,
                      description: description!,
                      price: price.toString(),
                      image: image!,
                      id: item!.id,
                      category: item!.category);
                } catch (e) {
                  print(e);
                }
              }),
        ],
      ),
    );
  }
}
