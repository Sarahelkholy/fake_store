import 'package:fake_store/features/home/domain/entities/product.dart';
import 'package:fake_store/features/home/domain/entities/category.dart';
import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:fake_store/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

// Mocks
class MockHomeBloc extends Mock implements HomeBloc {}

class FakeHomeEvent extends Fake implements HomeEvent {}

class FakeHomeState extends Fake implements HomeState {}

void main() {
  late MockHomeBloc mockHomeBloc;

  setUpAll(() {
    registerFallbackValue(FakeHomeEvent());
    registerFallbackValue(FakeHomeState());
  });

  setUp(() {
    mockHomeBloc = MockHomeBloc();

    final mockProducts = [
      Product(
        id: 1,
        title: 'Test Product',
        price: 99.99,
        image: '',
        category: 'test',
        description: '',
      ),
      Product(
        id: 2,
        title: 'Another Product',
        price: 49.99,
        image: '',
        category: 'test',
        description: '',
      ),
    ];

    final mockCategories = [Category(name: 'test')];

    when(() => mockHomeBloc.state).thenReturn(HomeState.initial());
    when(() => mockHomeBloc.stream).thenAnswer(
      (_) => Stream.fromIterable([
        HomeState.categoriesSuccess(mockCategories),
        HomeState.productsSuccess(mockProducts),
      ]),
    );
  });

  testWidgets('Displays mock products and categories', (tester) async {
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) => MaterialApp(
          home: BlocProvider<HomeBloc>.value(
            value: mockHomeBloc,
            child: const HomeScreen(),
          ),
        ),
      ),
    );

    await tester.pumpAndSettle();

    expect(find.text('Test Product'), findsOneWidget);
    expect(find.text('Another Product'), findsOneWidget);
    expect(find.text('test'), findsWidgets);
  });
}
