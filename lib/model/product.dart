import 'dart:ffi';

class product {
  final dynamic id;
  final dynamic title;
  final dynamic description;
  final dynamic image;
  final dynamic category;
  final dynamic rate;
  product({
    required this.id,
    required this.title,
    required this.description,
    required this.image,
    required this.category,
    required this.rate,
  });
  factory product.fromJson(JsonData) {
    return product(
      id: JsonData['id'],
      title: JsonData['title'],
      description: JsonData['description'],
      image: JsonData['image'],
      category: JsonData['category'],
      rate: rating.fromJson(JsonData['rating']),
    );
  }
}

//class for rating contine rate and count
class rating {
  final dynamic rate;
  final dynamic count;
  rating({
    this.rate,
    this.count,
  });
  factory rating.fromJson(JsonData) {
    return rating(
      rate: '0',
      count: '0',
    );
  }
}
