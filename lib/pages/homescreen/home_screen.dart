import 'package:bootcamp_practice/model/product%20model/product.dart';
import 'package:bootcamp_practice/pages/detailscreen/detail_screen.dart';
import 'package:bootcamp_practice/services/http_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../common/routes/names.dart';
import '../../model/category model/category_model.dart';
import '../widget/custom_textfield.dart';
import '../widget/page_card.dart';

class HomeScreen extends StatelessWidget {
  final _controller = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffefefe),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //row
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/Menu.png",
                  ),
                  InkWell(
                      onTap: () {
                        Get.toNamed("/cartscreen");
                      },
                      child: Image.asset("assets/images/Cart.png")),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Hemendra",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Welcome to laza",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: CustomTextField(
                      controller: _controller,
                      hintText: "Search...",
                      prefixIcon: const Icon(Icons.search),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Image.asset("assets/images/Voice.png"),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Choose Brand",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    "View All",
                    style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FutureBuilder<List<ProductCategory>>(
                future: ApiClient.getProductCategory(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (snapshot.hasError) {
                    return const Center(
                      child: Text("Error occurred"),
                    );
                  }
                  return Container(
                    // height: 40,
                    // width: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: snapshot.data!.length,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        ProductCategory productCategory = snapshot.data![index];
                        return Container(
                          height: 40,
                          width: 100,
                          child: ListTile(
                            leading: Text("3425"),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "New Arrival",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.review);
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: Colors.grey.shade600),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            FutureBuilder<List<Product>>(
              future: ApiClient.getAllProduct(limit: "100"),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasError) {
                  return const Center(
                    child: Text("Error occured"),
                  );
                }
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.8,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: snapshot.data!.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    Product product = snapshot.data![index];
                    return PageCard(
                      imgPart: product.images![0],
                      price: product.price.toString(),
                      onTap: () {
                        Get.to(() => DetailScreen(product: product));
                      },
                      name: product.title.toString(),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
