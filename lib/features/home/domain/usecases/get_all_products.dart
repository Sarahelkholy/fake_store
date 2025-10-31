import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/core/usecases/usecase.dart';
import 'package:fake_store/features/home/data/models/product_model.dart';
import 'package:fake_store/features/home/domain/repo/home_repo.dart';

class GetAllProducts implements UseCase<List<ProductModel>, NoParams> {
  final HomeRepo homeRepo;

  GetAllProducts(this.homeRepo);

  @override
  Future<ApiResult<List<ProductModel>>> call(NoParams params) async {
    return await homeRepo.getProducts();
  }
}
