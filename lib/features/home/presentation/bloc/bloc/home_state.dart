part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  const factory HomeState.productsLoading() = ProductsLoading;
  const factory HomeState.productsSuccess(List<ProductModel> productsList) =
      ProductsSuccess;
  const factory HomeState.productsError(ErrorHandler errorHandler) =
      ProductsError;
}
