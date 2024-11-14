import 'package:trogon_media/home/models/product_model.dart';
import 'package:http/http.dart' as http;

class HomeRepository {
  Future<ProductGetModel> getProducts() async {
    const String url = "https://fake-store-api.mock.beeceptor.com/api/products";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return ProductGetModel(productModel: [], error: null);
    } else {
      return ProductGetModel(productModel: [], error: "Something went wrong");
    }
  }
}
