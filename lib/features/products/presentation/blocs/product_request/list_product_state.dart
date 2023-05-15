part of 'list_product_bloc.dart';

abstract class ListProductState extends Equatable {
  const ListProductState();
}

class ListProductInitial extends ListProductState {
  @override
  List<Object> get props => [];
}

class ListProductLoading extends ListProductState {
  @override
  List<Object> get props => [];
}

class ListProductSuccess extends ListProductState {
  final List<ProductResponseEntity> products;
  const ListProductSuccess({required this.products});

  @override
  List<Object> get props => [products];
}
class ListProductError extends ListProductState {
  @override
  List<Object> get props => [];
}


