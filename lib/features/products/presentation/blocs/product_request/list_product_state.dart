part of 'list_product_bloc.dart';

class ListProductState extends Equatable {
  const ListProductState({required this.products});
  final List<ProductResponseEntity> products;

  @override
  List<Object?> get props => throw UnimplementedError();
}

class ListProductInitial extends ListProductState {
  const ListProductInitial({required super.products});

  @override
  List<Object> get props => [];
}
