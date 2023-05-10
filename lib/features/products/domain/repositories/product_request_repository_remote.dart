import '../entities/product_request_entity.dart';

abstract class ProductRequestRepositoryRemote {
  Future<List<ProductResponseEntity>> productRequest();}