import 'package:flutter/material.dart';
import 'package:store_flutter/features/products/domain/entities/product_response_entity.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key, required this.product}) : super(key: key);
  final ProductResponseEntity product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.4), blurRadius: 10)]),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadowColor: Colors.grey.withOpacity(0.4),
        clipBehavior: Clip.antiAlias,
        color: const Color(0xFFFFFFFF),
        child: SizedBox(
          width: 250,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  width: 300,
                  height: 300,
                  child: Image.network(
                    product.image,
                  ),
                ),
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
                            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                            product.title),
                        Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(style: const TextStyle(fontSize: 16), '\$${product.price.toString()}'),
                                  Icon(Icons.add_circle, size: 30),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
