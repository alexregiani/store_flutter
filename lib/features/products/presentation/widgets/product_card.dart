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
      color: const Color(0xFFC8FAFF),
      child: SizedBox(
        width: 250,
        child: Column(children: [
          SizedBox(width: 300, height: 300, child: Image.network(fit: BoxFit.cover, product.image)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            child: Column(
              children: [
                Text(product.title),
                Text(product.price.toString()),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
