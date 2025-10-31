import 'package:fake_store/core/di/dependency_injection.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_categories.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_products.dart';
import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:fake_store/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FakeStoreApp extends StatelessWidget {
  const FakeStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Store app',

          home: BlocProvider(
            create: (context) =>
                HomeBloc(getIt<GetAllProducts>(), getIt<GetAllCategories>()),
            child: HomeScreen(),
          ),
        );
      },
    );
  }
}
