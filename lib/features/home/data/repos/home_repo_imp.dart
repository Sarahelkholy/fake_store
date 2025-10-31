import 'package:fake_store/core/networking/api_error_handler.dart';
import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/features/home/data/apis/home_api_service.dart';
import 'package:fake_store/features/home/data/models/product_model.dart';
import 'package:fake_store/features/home/domain/repo/home_repo.dart';

class HomeRepoImp implements HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepoImp(this._homeApiService);
  @override
  Future<ApiResult<List<ProductModel>>> getProducts() async {
    try {
      final response = await _homeApiService.getProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
