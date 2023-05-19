import 'package:flutter/material.dart';
import 'package:store_flutter/features/products/domain/entities/product_response_entity.dart';

class ProductCard extends StatelessWidget {
  ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);
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
          width: 250, // controls width of the card (in general)
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  width: 200, // controls width of the image
                  height: 250, // controls height of the image
                  child: Image.network(
                    product.image, // product image
                  ),
                ),
              ),
              Expanded(
                //this expanded is in charge putting the title on top and the price and icon on bottom of the card
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Divider(
                        height: 0,
                        color: Colors.grey,
                        thickness: 1,
                      ),
                      Expanded(
                        // it puts title further on the top, closer to the image
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical:
                                  8), // the expanded by itself puts the title too close to the image, this padding fixes that
                          child: Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                              product.title),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0), // price and icon padding
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(style: const TextStyle(fontSize: 15), '\$${product.price.toString()}'),
                            const Icon(Icons.add_circle, size: 40),
                          ],
                        ),
                      ),
                    ],
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
