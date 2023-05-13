import '../entities/product_response_entity.dart';

abstract class ListProductRepositoryRemote {
  Future<List<ProductResponseEntity>> productRequest();}