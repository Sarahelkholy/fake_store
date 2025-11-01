import 'package:fake_store/core/helpers/spacing.dart';
import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:fake_store/features/home/presentation/widgets/category/category_list_view.dart';
import 'package:fake_store/features/home/presentation/widgets/category/category_shimmer_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesBlocBuilder extends StatelessWidget {
  const CategoriesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          current is CategoriesSuccess ||
          current is CategoriesLoading ||
          current is CategoriesError,
      builder: (context, state) {
        return state.maybeWhen(
          categoriesLoading: () {
            return setupLoading();
          },
          categoriesSuccess: (categoriesList) {
            return setupSuccess(categoriesList);
          },
          categoriesError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return Column(
      children: [verticalSpace(10), const CategoryShimmerLoading()],
    );
  }

  Widget setupSuccess(categoriesList) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: CategoryListView(categoriesList: categoriesList),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
