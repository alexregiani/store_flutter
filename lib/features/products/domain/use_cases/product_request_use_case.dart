import 'package:store_flutter/features/products/domain/entities/product_response_entity.dart';
import 'package:store_flutter/features/products/domain/repositories/product_request_repository_remote.dart';

class ProductRequestUseCase {
  final ProductRequestRepositoryRemote productRequestRepositoryRemote;

  ProductRequestUseCase({required this.productRequestRepositoryRemote});

  Future<List<ProductResponseEntity>> request() async {
    final productRequest = await productRequestRepositoryRemote.productRequest();
    return productRequest;
  }

}