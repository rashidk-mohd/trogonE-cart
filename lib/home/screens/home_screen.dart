import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogon_media/home/controller/home_controller.dart';
import 'package:trogon_media/home/widgets/product_card.dart';
import 'package:trogon_media/product_details/screens/prouct_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController productController = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("TrogonE-Cart"),
        centerTitle: true,
      ),
      body:Obx(() {
        if(productController.isLoading.value){
 return const Center(child:  CircularProgressIndicator());
        }else{
return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  const Text(
                    "NewArrivals",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: productController.products.length,
                      itemBuilder: (context, index) {
                        final product = productController.products[index];
                        return InkWell(
                            onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProuctDetailsScreen(
                               name: product.name,
                            brand: product.brand,
                            discount: product.discount,
                            price: product.price,
                            rating: product.rating,
                            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNiJa-NZ4hGN8nUj8eDsaJ9GXF1MshdbnhRg&s"
                            ),));
                          },
                          child: ProductCard(
                            name: product.name,
                            brand: product.brand,
                            discount: product.discount,
                            price: product.price,
                            rating: product.rating,
                            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSXUVXERm3yWgAa9s5uAIG2et2PtD1mM-1n6g&s",
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Trending Products",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: productController.products.length,
                      itemBuilder: (context, index) {
                        final product = productController.products[index];
                        return InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProuctDetailsScreen(
                               name: product.name,
                            brand: product.brand,
                            discount: product.discount,
                            price: product.price,
                            rating: product.rating,
                            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNiJa-NZ4hGN8nUj8eDsaJ9GXF1MshdbnhRg&s"
                            ),));
                          },
                          child: ProductCard(
                            name: product.name,
                            brand: product.brand,
                            discount: product.discount,
                            price: product.price,
                            rating: product.rating,
                            // https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6cmKVdaWpFiwRSsdYyZphLJFlqexeG4_aig&s
                            imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6cmKVdaWpFiwRSsdYyZphLJFlqexeG4_aig&s"
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        width: 20,
                      ),
                    ),
                  )
                ],
              ),
            );
        }
      },));
      
      
      
     
  }
}
