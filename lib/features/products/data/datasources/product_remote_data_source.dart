import 'package:store_flutter/features/products/data/models/product_response_model.dart';

abstract class ProductRemoteDataSource {
  Future<List<ProductResponseModel>> getProducts();
}
