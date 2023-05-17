import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/product_request/list_product_bloc.dart';
import '../widgets/product_card.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Flexible(
            flex: 1,
            child: TextButton(
              onPressed: () {
                BlocProvider.of<ListProductBloc>(context).add(const FetchProductEvent());
              },
              child: Text('press to get products'),
            ),
          ),
          Flexible(
            flex: 1,
            child: Center(
              child: BlocBuilder<ListProductBloc, ListProductState>(
                builder: (context, state) {
                  if (state is ListProductLoadingState) {
                    return CircularProgressIndicator();
                  } else if (state is ListProductSuccessState) {
                    return ListView.builder(scrollDirection: Axis.horizontal,
                        itemCount: state.products.length,
                        itemBuilder: (context, index) {
                          return ProductCard(product: state.products[index]);
                        });
                  } else {
                    return Text('error');
                  }
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
