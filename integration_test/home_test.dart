import 'package:fake_store/core/di/dependency_injection.dart';
import 'package:fake_store/features/home/presentation/home_screen.dart';
import 'package:fake_store/features/home/presentation/widgets/banner_slider.dart';
import 'package:fake_store/features/home/presentation/widgets/products/products_bloc_builder.dart';
import 'package:fake_store/features/home/presentation/widgets/category/categories_bloc_builder.dart';
import 'package:fake_store/features/home/presentation/widgets/products/product_card.dart';
import 'package:fake_store/features/home/presentation/widgets/search_container.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'home_screen_widget.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    await setupGetIt();
  });

  testWidgets('displays home UI correctly', (tester) async {
    await tester.pumpWidget(homeScreenTest());
    await tester.pumpAndSettle();

    expect(find.byType(HomeScreen), findsOneWidget);
    expect(find.byType(SearchContainer), findsOneWidget);
    expect(find.byType(BannerSlider), findsOneWidget);
    expect(find.byType(CategoriesBlocBuilder), findsOneWidget);
    expect(find.byType(ProductsBlocBuilder), findsOneWidget);
  });

  group('searching tests', () {
    testWidgets('filters products when searching', (tester) async {
      await tester.pumpWidget(homeScreenTest());
      await tester.pumpAndSettle();

      final searchField = find.byType(TextField);
      await tester.enterText(searchField, 'white');
      await tester.pumpAndSettle();

      expect(find.textContaining('white', findRichText: true), findsWidgets);
      expect(find.textContaining('Laptop', findRichText: true), findsNothing);
    });

    testWidgets('no products found when searching', (tester) async {
      await tester.pumpWidget(homeScreenTest());
      await tester.pumpAndSettle();

      final searchField = find.byType(TextField);
      await tester.enterText(searchField, 'fislfo');
      await tester.pumpAndSettle();

      expect(find.text('No products found'), findsOneWidget);
    });
  });

  group('categories tests', () {
    testWidgets('filters products by category when tapping a category', (
      tester,
    ) async {
      await tester.pumpWidget(homeScreenTest());
      await tester.pumpAndSettle();
      final categoryList = find.byType(CategoriesBlocBuilder);
      // drag to left
      await tester.drag(categoryList, const Offset(-200, 0));
      await tester.pumpAndSettle();

      // drag to right
      await tester.drag(categoryList, const Offset(200, 0));
      await tester.pumpAndSettle();

      final category = find.text('electronics');
      await tester.tap(category);
      await tester.pumpAndSettle();

      expect(
        find.textContaining('electronics', findRichText: true),
        findsWidgets,
      );
    });

    testWidgets('unfilters products when tapping the same category again', (
      tester,
    ) async {
      await tester.pumpWidget(homeScreenTest());
      await tester.pumpAndSettle();

      final category = find.text('electronics');
      await tester.tap(category);
      await tester.pumpAndSettle();

      final filteredCount = tester.widgetList(find.byType(ProductCard)).length;

      await tester.tap(category);
      await tester.pumpAndSettle();

      final unfilteredCount = tester
          .widgetList(find.byType(ProductCard))
          .length;

      expect(unfilteredCount, greaterThan(filteredCount));
    });
  });
}
