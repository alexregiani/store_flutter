import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_flutter/features/products/presentation/blocs/product_request/list_product_bloc.dart';
import 'package:store_flutter/features/products/presentation/pages/products_page.dart';

import 'features/products/data/datasources/product_imp_data_source.dart';
import 'features/products/data/repositories/list_product_repository_imp_remote.dart';
import 'features/products/domain/use_cases/list_product_use_case.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var listProductUseCase = ListProductUseCase(
      listProductRepositoryRemote: ListProductRepositoryImpRemote(
        productRemoteDataSource: ProductImpDataSource(),
      ),
    );
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BlocProvider(
          create: (context) => ListProductBloc(listProductUseCase: listProductUseCase),
          child: const ProductsPage(),
        ));
  }
}
