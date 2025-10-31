import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/core/usecases/usecase.dart';
import 'package:fake_store/features/home/domain/entities/product.dart';
import 'package:fake_store/features/home/domain/repo/home_repo.dart';

class GetCategoryProducts implements UseCase<List<Product>, String> {
  final HomeRepo homeRepo;

  GetCategoryProducts(this.homeRepo);

  @override
  Future<ApiResult<List<Product>>> call(String categoryName) async {
    return await homeRepo.getProductsByCategory(categoryName);
  }
}
