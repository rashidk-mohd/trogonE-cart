import 'package:flutter/material.dart';

class ProuctDetailsScreen extends StatelessWidget {
   const ProuctDetailsScreen(
      {super.key,
      required this.brand,
      required this.discount,
      required this.imageUrl,
      required this.price,
      required this.name,
      required this.rating});
  final String? imageUrl;
  final double? price;
  final String? name;
  final int? discount;
  final double? rating;
  final String? brand;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
        centerTitle: true,
      ),
      body:
      
       Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Product Image with BoxDecoration and BoxFit
            Container(
              width: double.infinity, // Full width
              height: 250.0, // Set the height of the image container
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16), // Rounded corners
                image:  DecorationImage(
                  image: NetworkImage(
                    '$imageUrl', // Your product image URL
                  ),
                  fit: BoxFit.cover, // BoxFit to cover the entire container
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between image and text
            // Product Details
             Text(
              'Product Name: $name',
              style:const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
             Text(
              'Brand: $brand',
              style:const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 12),
             Text(
              'Price: \$$price',
              style: const TextStyle(fontSize: 18, color: Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}
