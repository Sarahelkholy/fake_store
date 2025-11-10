import 'package:fake_store/core/di/dependency_injection.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_categories.dart';
import 'package:fake_store/features/home/domain/usecases/get_all_products.dart';
import 'package:fake_store/features/home/domain/usecases/get_category_products.dart';
import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:fake_store/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget homeScreenTest() {
  return ScreenUtilInit(
    designSize: const Size(375, 812),
    builder: (context, _) => MaterialApp(
      home: BlocProvider(
        create: (_) => HomeBloc(
          getIt<GetAllProducts>(),
          getIt<GetAllCategories>(),
          getIt<GetCategoryProducts>(),
        ),
        child: const HomeScreen(),
      ),
    ),
  );
}
