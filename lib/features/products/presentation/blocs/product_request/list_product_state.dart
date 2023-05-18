part of 'list_product_bloc.dart';

abstract class ListProductState extends Equatable {
  const ListProductState();
}

class ListProductInitialState extends ListProductState {
  @override
  List<Object> get props => [];
}

class ListProductLoadingState extends ListProductState {
  @override
  List<Object> get props => [];
}

class ListProductSuccessState extends ListProductState {
  final List<ProductResponseEntity> products;

  ListProductSuccessState({required this.products}) {
  }

  @override
  List<Object> get props => [products];
}
class ListProductErrorState extends ListProductState {
  final String errorMessage;
  const ListProductErrorState({required this.errorMessage});

  @override
  List<Object> get props => [errorMessage];
}


