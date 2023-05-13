part of 'list_product_bloc.dart';

abstract class ListProductEvent extends Equatable {
  const ListProductEvent();
  @override
  List<Object> get props => [];
}
class ListProduct extends ListProductEvent {
  ProductResponseEntity productRequest;
  ListProduct({required this.productRequest});
}