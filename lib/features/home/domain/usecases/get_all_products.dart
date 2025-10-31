import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/core/usecases/usecase.dart';
import 'package:fake_store/features/home/domain/entities/product.dart';
import 'package:fake_store/features/home/domain/repo/home_repo.dart';

class GetAllProducts implements UseCase<List<Product>, NoParams> {
  final HomeRepo homeRepo;

  GetAllProducts(this.homeRepo);

  @override
  Future<ApiResult<List<Product>>> call(NoParams params) async {
    return await homeRepo.getProducts();
  }
}
