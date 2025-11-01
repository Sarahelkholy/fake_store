import 'package:fake_store/core/networking/api_error_handler.dart';
import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/features/home/data/apis/home_api_service.dart';
import 'package:fake_store/features/home/data/models/product_model.dart';
import 'package:fake_store/features/home/domain/entities/category.dart';
import 'package:fake_store/features/home/domain/entities/product.dart';
import 'package:fake_store/features/home/domain/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepoImp(this._homeApiService);

  @override
  Future<ApiResult<List<Product>>> getProducts() async {
    try {
      final response = await _homeApiService.getProducts();

      final products = response.map((model) => model.toEntity()).toList();

      return ApiResult.success(products);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<List<Category>>> getCategories() async {
    try {
      final response = await _homeApiService.getCategories();

      final categories = response.map((name) => Category(name: name)).toList();

      return ApiResult.success(categories);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

  @override
  Future<ApiResult<List<Product>>> getProductsByCategory(
    String categoryName,
  ) async {
    try {
      final response = await _homeApiService.getCategoryProducts(categoryName);

      final products = response.map((model) => model.toEntity()).toList();

      return ApiResult.success(products);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
