import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/features/home/data/models/product_model.dart';

abstract interface class HomeRepo {
  Future<ApiResult<List<ProductModel>>> getProducts();
}
