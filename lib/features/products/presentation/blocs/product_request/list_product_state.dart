part of 'list_product_bloc.dart';

class ListProductState extends Equatable {
  const ListProductState({required this.products});
  final List<ProductResponseEntity> products;

  @override
  // implement props
  List<Object?> get props => throw UnimplementedError();
}
