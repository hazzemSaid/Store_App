import '/helper/api.dart';
import '/model/product.dart';

class Add_product {
  /*title: test product
price: 13.5
description: lorem ipsum set
image: https://i.pravatar.cc
category: electronic*/
  Future<dynamic> add_product(
      {required String title,
      required String category,
      required String price,
      required String image,
      required String description}) async {
    // This is where you would add the product to the database
    // For now, we'll just print the product to the console
    print('Title: $title, Category: $category, Price: $price');
    dynamic jsonResponse = await API().POST(
        url: 'https://fakestoreapi.com/products',
        Body: {
          'title': title,
          'category': category,
          'price': price,
          'image': image,
          'description': description
        },
        Token: 'fakeToken');
    return (jsonResponse);
  }
}
