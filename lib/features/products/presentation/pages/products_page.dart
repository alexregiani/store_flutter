import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/product_request/list_product_bloc.dart';
import '../widgets/product_card.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextButton(
          onPressed: () {
            BlocProvider.of<ListProductBloc>(context).add(const FetchProductEvent());
          },
          child: Text('press to get products'),
        ),
        Center(
          child: BlocBuilder<ListProductBloc, ListProductState>(
            builder: (context, state) {
              if (state is ListProductLoadingState) {
                return const CircularProgressIndicator();
              } else if (state is ListProductSuccessState) {
                return SizedBox(
                  height: 420,
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      itemCount: state.products.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ProductCard(
                            product: state.products[index],
                          ),
                        );
                      }),
                );
              } else if (state is ListProductErrorState) {
                return Text(state.errorMessage);
              } else {
                return Container();
              }
            },
          ),
        ),
      ]),
    );
  }
}
