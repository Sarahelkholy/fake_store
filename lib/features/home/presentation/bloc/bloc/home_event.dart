part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.started() = _Started;

  // Categories
  const factory HomeEvent.getAllCategories() = _GetAllCategories;

  // Products
  const factory HomeEvent.getAllProducts() = _GetAllProducts;
  const factory HomeEvent.getCategoryProducts(String categoryName) =
      _GetCategoryProducts;

  // Search
  const factory HomeEvent.searchProducts(String query) = _SearchProducts;
}
