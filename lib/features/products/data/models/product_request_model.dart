import 'package:store_flutter/features/products/domain/entities/product_request_entity.dart';

class ProductRequestModel extends ProductRequestEntity {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  ProductRequestModel(
      {required this.id,
      required this.title,
      required this.price,
      required this.description,
      required this.category,
      required this.image})
      : super(
            id: id,
            title: title,
            price: price,
            description: description,
            category: category,
            image: image);
}
