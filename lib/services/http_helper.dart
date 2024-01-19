import 'dart:convert';
import 'dart:developer';

import 'package:bootcamp_practice/model/product%20model/product.dart';
import 'package:http/http.dart' as http;

import '../constant/url_constant.dart';
import '../model/category model/category_model.dart';

class ApiClient {
  static Future<List<dynamic>> getData(
      {required String path, String? limit}) async {
    try {
      var urlPath = Uri.https(
          baseUrl,
          'api/v1/$path',
          path == "products"
              ? {
                  "offset": "0",
                  "limit": limit,
                }
              : {});

      var response = await http.get(urlPath);
      var result = jsonDecode(response.body);

      List resultList = [];
      if (response.statusCode != 200) {
        throw result["message"];
      }
      for (var res in result) {
        resultList.add(res);
      }
      return resultList;
    } catch (error) {
      log("an error occurred $error");
      throw error.toString();
    }
  }

  static Future<List<Product>> getAllProduct({required String? limit}) async {
    List productList = await getData(path: "products", limit: limit);
    return Product.productFromSnapshot(productList);
  }

  static Future<List<Product>> getProductByID({required String id}) async {
    List productDetails = await getData(path: "id");
    return Product.productFromSnapshot(productDetails);
  }

  static Future<List<ProductCategory>> getProductCategory() async {
    List productCategory = await getData(path: "categories");
    print("...$productCategory");
    return ProductCategory.categoryFromSnapshot(productCategory);
  }
}
