import 'package:dio/dio.dart';
import 'package:fake_store/core/networking/dio_factory.dart';
import 'package:fake_store/features/home/data/apis/home_api_service.dart';
import 'package:fake_store/features/home/data/repos/home_repo_imp.dart';
import 'package:fake_store/features/home/domain/repo/home_repo.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_categories.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_products.dart';
import 'package:fake_store/features/home/domain/usecases/get_category_products.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // dio & apiServer
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<HomeApiService>(() => HomeApiService(dio));

  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImp(getIt()));

  // products

  getIt.registerLazySingleton<GetAllProducts>(() => GetAllProducts(getIt()));
  getIt.registerLazySingleton<GetCategoryProducts>(
    () => GetCategoryProducts(getIt()),
  );

  // categories

  getIt.registerLazySingleton<GetAllCategories>(
    () => GetAllCategories(getIt()),
  );
}
