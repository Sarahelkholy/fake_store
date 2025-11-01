import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:fake_store/features/home/presentation/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home_search_test.mocks.dart';

@GenerateMocks([HomeBloc])
void main() {
  late MockHomeBloc mockHomeBloc;

  setUp(() {
    mockHomeBloc = MockHomeBloc();

    when(mockHomeBloc.stream).thenAnswer((_) => const Stream.empty());
    when(mockHomeBloc.state).thenReturn(const HomeState.initial());
  });

  testWidgets('SearchContainer renders and triggers search event', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, child) {
          return MaterialApp(
            home: BlocProvider<HomeBloc>.value(
              value: mockHomeBloc,
              child: const Scaffold(body: SearchContainer()),
            ),
          );
        },
      ),
    );

    expect(find.byType(TextField), findsOneWidget);

    await tester.enterText(find.byType(TextField), 't-shirt');
    await tester.pump();

    verify(
      mockHomeBloc.add(const HomeEvent.searchProducts('t-shirt')),
    ).called(1);
  });
}
