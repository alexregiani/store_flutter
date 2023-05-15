part of 'list_product_bloc.dart';

abstract class ListProductEvent extends Equatable {
  const ListProductEvent();
}

 class FetchProductEvent extends ListProductEvent {
  const FetchProductEvent();

  @override
  List<Object> get props => [];
}