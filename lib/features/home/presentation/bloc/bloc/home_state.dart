part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Categories states
  const factory HomeState.categoriesLoading() = CategoriesLoading;
  const factory HomeState.categoriesSuccess(List<Category> categoriesList) =
      CategoriesSuccess;
  const factory HomeState.categoriesError(ErrorHandler errorHandler) =
      CategoriesError;

  // Products states
  const factory HomeState.productsLoading() = ProductsLoading;
  const factory HomeState.productsSuccess(List<Product> productsList) =
      ProductsSuccess;
  const factory HomeState.productsError(ErrorHandler errorHandler) =
      ProductsError;
}
