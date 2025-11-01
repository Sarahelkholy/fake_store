import '../networking/api_result.dart';

abstract interface class UseCase<SuccessType, Params> {
  Future<ApiResult<SuccessType>> call(Params params);
}

class NoParams {}
