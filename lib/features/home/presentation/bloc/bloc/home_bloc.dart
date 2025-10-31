import 'package:fake_store/core/networking/api_error_handler.dart';
import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/core/usecases/usecase.dart';
import 'package:fake_store/features/home/domain/entities/product.dart';
import 'package:fake_store/features/home/domain/entities/category.dart';

import 'package:fake_store/features/home/domain/usecases/get_all_categories.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_products.dart';
import 'package:fake_store/features/home/domain/usecases/get_category_products.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  List<Product> allProducts = [];

  final GetAllProducts _getAllProductsUseCase;
  final GetAllCategories _getAllCategoriesUseCase;
  final GetCategoryProducts _getCategoryProducts;

  HomeBloc(
    this._getAllProductsUseCase,
    this._getAllCategoriesUseCase,
    this._getCategoryProducts,
  ) : super(const HomeState.initial()) {
    on<_GetAllCategories>(_onGetAllCategories);
    on<_GetAllProducts>(_onGetAllProducts);
    on<_SearchProducts>(_onSearchProducts);
    on<_GetCategoryProducts>(_onGetCategoryProducts);
  }

  void _onGetAllCategories(
    _GetAllCategories event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.productsLoading());
    final response = await _getAllCategoriesUseCase(NoParams());
    response.when(
      success: (data) {
        emit(HomeState.categoriesSuccess(data));
      },
      failure: (error) {
        emit(HomeState.categoriesError(error));
      },
    );
  }

  void _onGetAllProducts(_GetAllProducts event, Emitter<HomeState> emit) async {
    emit(const HomeState.productsLoading());
    final response = await _getAllProductsUseCase(NoParams());
    response.when(
      success: (data) {
        allProducts = data;
        emit(HomeState.productsSuccess(data));
      },
      failure: (error) {
        emit(HomeState.productsError(error));
      },
    );
  }

  void _onGetCategoryProducts(
    _GetCategoryProducts event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.productsLoading());
    final response = await _getCategoryProducts(event.categoryName);
    response.when(
      success: (data) {
        emit(HomeState.productsSuccess(data));
      },
      failure: (error) {
        emit(HomeState.productsError(error));
      },
    );
  }

  void _onSearchProducts(_SearchProducts event, Emitter<HomeState> emit) {
    emit(const HomeState.productsLoading());

    final filtered = allProducts
        .where(
          (p) =>
              p.title?.toLowerCase().contains(event.query.toLowerCase()) ??
              false,
        )
        .toList();
    emit(HomeState.productsSuccess(filtered));
  }
}
