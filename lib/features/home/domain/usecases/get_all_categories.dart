import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/core/usecases/usecase.dart';
import 'package:fake_store/features/home/domain/entities/category.dart';
import 'package:fake_store/features/home/domain/repo/home_repo.dart';

class GetAllCategories implements UseCase<List<Category>, NoParams> {
  final HomeRepo homeRepo;

  GetAllCategories(this.homeRepo);

  @override
  Future<ApiResult<List<Category>>> call(NoParams params) async {
    return await homeRepo.getCategories();
  }
}
