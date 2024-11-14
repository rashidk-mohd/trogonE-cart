import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
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
    return Container(
      width: 200,
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.network("$imageUrl"),
              Positioned(
                  top: 0,
                  right: 1,
                  child: Row(
                    children: [
                      Text(
                        "Rating $rating",
                        style: const TextStyle(color: Colors.white),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.white,
                      )
                    ],
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$name",
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                "$price",
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "$brand",
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                "$discount",
                style: const TextStyle(color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
