import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import '../blocs/product_request/list_product_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          TextButton(
            onPressed: () {
              BlocProvider.of<ListProductBloc>(context).add(const FetchProductEvent());
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
    );
  }
}
