import '../category model/category_model.dart';

class Product {
  static List<Product> productFromSnapshot(List str ){
    return str.map((e) => Product.fromJson(e)).toList();
  }
  int id;
  String title;
  double price;
  String description;
  ProductCategory productCategory;
  List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.productCategory,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'].toDouble(),
      description: json['description'],
      productCategory: ProductCategory.fromJson(json['category']),
      images: List<String>.from(json['images']),
    );
  }
}


