import 'package:dio/dio.dart';
import 'package:fake_store/features/home/data/apis/home_api_constants.dart';
import 'package:fake_store/features/home/data/models/product_model.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: HomeApiConstants.apiBaseUrl)
abstract class HomeApiService {
  factory HomeApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.productsEP)
  Future<List<ProductModel>> getProducts();

  @GET(HomeApiConstants.categoriesEP)
  Future<List<String>> getCategories();
}
