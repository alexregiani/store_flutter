import 'package:store_flutter/features/products/domain/entities/product_response_entity.dart';
import 'package:store_flutter/features/products/domain/repositories/list_product_repository_remote.dart';

class ListProductUseCase {
  final ListProductRepositoryRemote listProductRequestRepositoryRemote;

  ListProductUseCase({required this.listProductRequestRepositoryRemote});

  Future<List<ProductResponseEntity>> call() async {
    final productRequest = await listProductRequestRepositoryRemote.productRequest();
    return productRequest;
  }
}
