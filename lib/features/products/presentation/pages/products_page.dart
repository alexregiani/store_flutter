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
                  height: 410, // controls card and ListView.builder height
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    itemCount: state.products.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6,
                            vertical:
                                12), //Padding: controls horizontal spacing between cards, vertically it prevents the card shadow from being clipped
                        // vertically it helps not to clip shadows
                        child: ProductCard(
                          width: 270, //controls card width
                          product: state.products[index],
                        ),
                      );
                    },
                  ),
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
