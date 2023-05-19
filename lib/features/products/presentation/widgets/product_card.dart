import 'package:flutter/material.dart';
import 'package:store_flutter/features/products/domain/entities/product_response_entity.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key, required this.product}) : super(key: key);
  final ProductResponseEntity product;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 10,
      shadowColor: Colors.grey.withOpacity(0.4),
      clipBehavior: Clip.antiAlias,
      color: const Color(0xFFE7FFFA),
      child: SizedBox(
        width: 250,
        child: Column(
          children: [
            SizedBox(
              width: 300,
              height: 300,
              child: Image.network(product.image, fit: BoxFit.cover),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                child: Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                          product.title),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(style: const TextStyle(fontSize: 16), '\$${product.price.toString()}')),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
