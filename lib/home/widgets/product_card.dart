import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.brand,
    required this.discount,
    required this.imageUrl,
    required this.price,
    required this.name,
    required this.rating,
  });

  final String? imageUrl;
  final double? price;
  final String? name;
  final int? discount;
  final double? rating;
  final String? brand;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    double cardWidth = screenWidth * 0.50; 
    double cardHeight = screenHeight * 0.25; 

    return Container(
      width: cardWidth,
      height: cardHeight,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network(
                "$imageUrl",
                width: cardWidth,
                height: cardHeight * 0.6, 
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Row(
                  children: [
                    Text(
                      "Rating ${rating??0}",
                      style:const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.white,
                      size: 16,
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                name??"Product",
                style: const TextStyle(
                  color: Colors.black,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                "\$${price??0}",
                style:const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                brand??"XYZ",
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                "${discount??0}% Off",
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
