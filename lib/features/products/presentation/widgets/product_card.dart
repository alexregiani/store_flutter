import 'package:flutter/material.dart';
import 'package:store_flutter/features/products/domain/entities/product_response_entity.dart';

class ProductCard extends StatelessWidget {
  ProductCard({Key? key, required this.product, required this.width}) : super(key: key);
  final ProductResponseEntity product;
  final double width;

  @override
  Widget build(BuildContext context) {
    const double cardRadius = 30; // it controls both the shadow and card radius at the same time
    return Container(
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(cardRadius),
          boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 10)]),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRadius),
        ),
        color: const Color(0xFFFFFFFF), //controls card color
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: SizedBox(
                width: 200, // controls width of the image
                height: 250, // controls height of the image
                child: Image.network(
                  product.image, // product image
                ),
              ),
            ),
            Expanded(
              //Expanding: It puts the title on top, and the price and icon on bottom of the card
              child: Padding(
                //Padding: it prevents the elements from touching the card walls
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Divider(
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
    );
  }
}
