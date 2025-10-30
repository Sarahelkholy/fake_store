import 'package:fake_store/features/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';
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

          home: HomeScreen(),
        );
      },
    );
  }
}
