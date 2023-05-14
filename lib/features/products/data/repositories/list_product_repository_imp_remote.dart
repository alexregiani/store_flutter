import 'package:store_flutter/features/products/data/datasources/product_remote_data_source.dart';
import 'package:store_flutter/features/products/domain/entities/product_response_entity.dart';

import '../../domain/repositories/list_product_repository_remote.dart';

class ListProductRepositoryImpRemote implements ListProductRepositoryRemote {
  final ProductRemoteDataSource productRemoteDataSource;

  ListProductRepositoryImpRemote({required this.productRemoteDataSource});

  @override
  Future<List<ProductResponseEntity>> productRequest() async {
    var response = await productRemoteDataSource.getProducts();
    return response;
  }
}
