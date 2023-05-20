class ProductResponseEntity {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  ProductResponseEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });
}