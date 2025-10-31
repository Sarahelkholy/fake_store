import 'package:fake_store/core/helpers/spacing.dart';
import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:fake_store/features/home/presentation/widgets/banner_slider.dart';
import 'package:fake_store/features/home/presentation/widgets/category/categories_bloc_builder.dart';
import 'package:fake_store/features/home/presentation/widgets/products/products_bloc_builder.dart';
import 'package:fake_store/features/home/presentation/widgets/search_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>()
      ..add(const HomeEvent.getAllCategories())
      ..add(const HomeEvent.getAllProducts());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                children: [
                  SearchContainer(),
                  verticalSpace(20),
                  BannerSlider(),
                  verticalSpace(20),
                  CategoriesBlocBuilder(),

                  ProductsBlocBuilder(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
