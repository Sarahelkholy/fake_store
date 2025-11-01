import 'package:fake_store/core/networking/api_error_handler.dart';
import 'package:fake_store/core/networking/api_result.dart';
import 'package:fake_store/features/home/domain/entities/product.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_categories.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_products.dart';
import 'package:fake_store/features/home/domain/usecases/get_category_products.dart';
import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_bloc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<GetAllProducts>(),
  MockSpec<GetAllCategories>(),
  MockSpec<GetCategoryProducts>(),
])
void main() {
  late HomeBloc homeBloc;
  late MockGetAllProducts mockGetAllProducts;
  late MockGetAllCategories mockGetAllCategories;
  late MockGetCategoryProducts mockGetCategoryProducts;

  setUp(() {
    mockGetAllProducts = MockGetAllProducts();
    mockGetAllCategories = MockGetAllCategories();
    mockGetCategoryProducts = MockGetCategoryProducts();

    homeBloc = HomeBloc(
      mockGetAllProducts,
      mockGetAllCategories,
      mockGetCategoryProducts,
    );
  });

  group('HomeBloc Tests', () {
    test('emits [loading, success] when getAllProducts succeeds', () async {
      final products = [Product(id: 1, title: 'Test', price: 99.9)];

      when(
        mockGetAllProducts.call(any),
      ).thenAnswer((_) async => ApiResult<List<Product>>.success(products));

      expectLater(
        homeBloc.stream,
        emitsInOrder([
          const HomeState.productsLoading(),
          HomeState.productsSuccess(products),
        ]),
      );

      homeBloc.add(const HomeEvent.getAllProducts());
    });

    test('emits [loading, error] when getAllProducts fails', () async {
      final error = ErrorHandler.handle(Exception('Server error'));

      when(
        mockGetAllProducts.call(any),
      ).thenAnswer((_) async => ApiResult<List<Product>>.failure(error));

      expectLater(
        homeBloc.stream,
        emitsInOrder([
          const HomeState.productsLoading(),
          HomeState.productsError(error),
        ]),
      );

      homeBloc.add(const HomeEvent.getAllProducts());
    });

    test('searchProducts filters products correctly', () async {
      homeBloc.allProducts = [
        Product(id: 1, title: 't-shirt', price: 10),
        Product(id: 2, title: 'shoes', price: 20),
      ];

      expectLater(
        homeBloc.stream,
        emitsInOrder([
          const HomeState.productsLoading(),
          predicate<HomeState>((state) {
            return state.mapOrNull(
                  productsSuccess: (s) =>
                      s.productsList.length == 1 &&
                      s.productsList.first.title == 't-shirt',
                ) !=
                null;
          }),
        ]),
      );

      homeBloc.add(const HomeEvent.searchProducts('app'));
    });
  });
}
