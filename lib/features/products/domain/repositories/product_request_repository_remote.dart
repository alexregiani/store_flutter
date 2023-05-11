import '../entities/product_response_entity.dart';

abstract class ProductRequestRepositoryRemote {
  Future<List<ProductResponseEntity>> productRequest();}