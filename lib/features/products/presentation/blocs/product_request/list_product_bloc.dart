
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'list_product_event.dart';
part 'list_product_state.dart';

class ListProductBloc extends Bloc<ListProductEvent, ListProductState> {
  ListProductBloc() : super(ListProductInitial()) {
    on<ListProductEvent>((event, emit) {
    });
  }
}
