import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_flutter/features/products/data/datasources/product_imp_data_source.dart';
import 'package:store_flutter/features/products/data/repositories/list_product_repository_imp_remote.dart';
import 'package:store_flutter/features/products/domain/use_cases/list_product_use_case.dart';

import '../blocs/product_request/list_product_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        var listProductUseCase = ListProductUseCase(
          listProductRepositoryRemote: ListProductRepositoryImpRemote(
            productRemoteDataSource: ProductImpDataSource(),
          ),
        );
        return ListProductBloc(listProductUseCase: listProductUseCase);
      },
      child: Scaffold(
        body: Center(
          child: Column(children: [
            TextButton(
              onPressed: () {
                BlocProvider.of<ListProductBloc>(context).add(FetchProductEvent());
              },
              child: Text('press to get products'),
            ),
            Card(
              child: Stack(children: [
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(color: Colors.red),
                ),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
