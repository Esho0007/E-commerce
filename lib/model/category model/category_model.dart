class ProductCategory {
  static List<ProductCategory> categoryFromSnapshot(List str ){
    return str.map((e) => ProductCategory.fromJson(e)).toList();
  }
  int id;
  String name;
  String image;

  ProductCategory({
    required this.id,
    required this.name,
    required this.image,
  });

  factory ProductCategory.fromJson(Map<String, dynamic> json) {
    return ProductCategory(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}