import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/features/home/domain/entities/category.dart';
import 'package:fake_store/features/home/domain/entities/product.dart';

abstract interface class HomeRepo {
  Future<ApiResult<List<Product>>> getProducts();

  Future<ApiResult<List<Category>>> getCategories();

  Future<ApiResult<List<Product>>> getProductsByCategory(String categoryName);
}
