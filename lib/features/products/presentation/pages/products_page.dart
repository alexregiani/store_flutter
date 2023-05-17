import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/product_request/list_product_bloc.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          TextButton(
            onPressed: () {
              BlocProvider.of<ListProductBloc>(context).add(const FetchProductEvent());
            },
            child: Text('press to get products'),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 10,
            shadowColor: Colors.grey.withOpacity(0.4),
            clipBehavior: Clip.antiAlias,
            color: const Color(0xFFC8FAFF),
            child: Container(
              width: 250,
              child: Column(children: [
                Image.asset(fit: BoxFit.cover, 'assets/chair.jpg'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Column(
                    children: [Text('Item name'), Text('Price')],
                  ),
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
