import 'package:dio/dio.dart';
import 'package:store_flutter/features/products/data/datasources/product_remote_data_source.dart';
import 'package:store_flutter/features/products/data/models/product_response_model.dart';

class ProductImpDataSource implements ProductRemoteDataSource {
  final Dio _dio = Dio();
  @override
  Future<List<ProductResponseModel>> getProducts() async{
    final response = await _dio.get('https://fakestoreapi.com/products');
    final List<dynamic> data = response.data;
    return data.map((product) => ProductResponseModel(
      id: product['id'],
      title: product['title'],
      price: product['price'].toDouble(),
      description: product['description'],
      category: product['category'],
      image: product['image'],
    )).toList();
  }
}