import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../domain/entities/product_response_entity.dart';
import '../../../domain/use_cases/list_product_use_case.dart';

part 'list_product_event.dart';
part 'list_product_state.dart';

class ListProductBloc extends Bloc<ListProductEvent, ListProductState> {
  final ListProductUseCase listProductUseCase;

  ListProductBloc({required this.listProductUseCase}) : super(ListProductInitialState()) {
    on<FetchProductEvent>((event, emit) async {
      try {
        emit(ListProductLoadingState()); // Indicate that loading has started
        final products = await listProductUseCase.call();
        emit(ListProductSuccessState(products: products)); // Emit the loaded state with the fetched products
      } catch (e) {
        print('Error occurred: $e');
        emit(
          const ListProductErrorState(errorMessage: 'failed to fetch products'),
        ); // Emit an error state in case of failure
      }
    });
  }
}
