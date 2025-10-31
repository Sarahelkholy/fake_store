import 'package:fake_store/core/networking/api_error_handler.dart';
import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/core/usecases/usecase.dart';
import 'package:fake_store/features/home/data/models/product_model.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final GetAllProducts _getAllProductsUseCase;

  HomeBloc(this._getAllProductsUseCase) : super(const HomeState.initial()) {
    on<_GetAllProducts>(_onGetAllProducts);
  }

  void _onGetAllProducts(_GetAllProducts event, Emitter<HomeState> emit) async {
    emit(const HomeState.productsLoading());
    final response = await _getAllProductsUseCase(NoParams());
    response.when(
      success: (data) {
        emit(HomeState.productsSuccess(data));
      },
      failure: (error) {
        emit(HomeState.productsError(error));
      },
    );
  }
}
