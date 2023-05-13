
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:store_flutter/features/products/domain/entities/product_response_entity.dart';

import '../../../domain/use_cases/list_product_use_case.dart';

part 'list_product_event.dart';
part 'list_product_state.dart';

class ListProductBloc extends Bloc<ListProductEvent, ListProductState> {
  final ListProductUseCase productRequestUseCase;
  ListProductBloc({required this.productRequestUseCase}) : super(ListProductState(products: [])) {
    on<ListProductEvent>((event, emit) {
      // implement event handler
    });
  }
}
