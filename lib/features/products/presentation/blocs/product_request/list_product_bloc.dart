
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/product_response_entity.dart';
import '../../../domain/use_cases/list_product_use_case.dart';

part 'list_product_event.dart';
part 'list_product_state.dart';

class ListProductBloc extends Bloc<ListProductEvent, ListProductState> {
  final ListProductUseCase listProductUseCase;

  ListProductBloc({required this.listProductUseCase}) : super(ListProductInitial()) {
    on<FetchProductEvent>((event, emit) async {
      try {
        emit(ListProductLoading()); // Indicate that loading has started
        final products = await listProductUseCase.call();
        emit(ListProductSuccess(products: products)); // Emit the loaded state with the fetched products
      } catch (e) {
        emit(ListProductError()); // Emit an error state in case of failure
      }
    });
  }
}