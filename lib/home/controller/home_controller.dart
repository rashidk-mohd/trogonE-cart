

import 'package:get/get.dart';
import 'package:trogon_media/home/models/product_model.dart';
import 'package:trogon_media/home/repository/home_repository.dart';

class HomeController extends GetConnect {
  HomeRepository homeRepository = HomeRepository();
  var isLoading = false.obs;
  var products = <ProductModel>[].obs;

  Future getProducts() async {
    isLoading(true);
    const String url = "https://fake-store-api.mock.beeceptor.com/api/products";
    final response = await get(url);
    if (response.statusCode == 200) {
      List<dynamic> productList = response.body;

      products.value =
          productList.map((json) => ProductModel.fromJson(json)).toList();
      isLoading(false);
    } else {
      Get.snackbar("Error", "Failed to fetch products");
    }
    isLoading(false);
  }

  @override
  void onInit() {
    super.onInit();
    getProducts();
  }
}
