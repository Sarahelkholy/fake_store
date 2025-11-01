import 'package:fake_store/features/home/data/apis/home_api_service.dart';
import 'package:fake_store/features/home/data/repos/home_repo_imp.dart';
import 'package:fake_store/features/home/data/models/product_model.dart';
import 'package:fake_store/features/home/domain/entities/product.dart';
import 'package:fake_store/core/networking/api_result.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([HomeApiService])
import 'home_repo_test.mocks.dart';

void main() {
  late MockHomeApiService mockApiService;
  late HomeRepoImp homeRepo;

  setUp(() {
    mockApiService = MockHomeApiService();
    homeRepo = HomeRepoImp(mockApiService);
  });

  group('HomeRepo Tests', () {
    test('getProducts returns success', () async {
      when(mockApiService.getProducts()).thenAnswer(
        (_) async => [
          ProductModel(
            id: 1,
            title: 'Test Product',
            price: 99.9,
            description: 'A fake test product',
            category: 'electronics',
            image: 'https://example.com/image.jpg',
          ),
        ],
      );

      final result = await homeRepo.getProducts();

      result.when(
        success: (data) {
          expect(data, isA<List<Product>>());
          expect(data.first.title, 'Test Product');
        },
        failure: (_) => fail('Expected success but got failure'),
      );
    });

    test('getProducts returns failure', () async {
      when(mockApiService.getProducts()).thenThrow(Exception('Server error'));

      final result = await homeRepo.getProducts();

      result.when(
        success: (_) => fail('Expected failure but got success'),
        failure: (error) {
          expect(error, isNotNull);
        },
      );
    });

    test('getProductsByCategory returns success', () async {
      // Arrange
      when(mockApiService.getCategoryProducts('electronics')).thenAnswer(
        (_) async => [
          ProductModel(
            id: 2,
            title: 'Phone',
            price: 599.9,
            description: 'Smartphone test product',
            category: 'electronics',
            image: 'https://example.com/phone.jpg',
          ),
        ],
      );

      // Act
      final result = await homeRepo.getProductsByCategory('electronics');

      // Assert
      result.when(
        success: (data) {
          expect(data, isA<List<Product>>());
          expect(data.first.category, 'electronics');
          expect(data.first.title, 'Phone');
        },
        failure: (_) => fail('Expected success but got failure'),
      );
    });
  });
}
