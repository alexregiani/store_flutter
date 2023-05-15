part of 'list_product_bloc.dart';

abstract class ListProductState extends Equatable {
  const ListProductState();
}

class ListProductInitial extends ListProductState {
  @override
  List<Object> get props => [];
}
