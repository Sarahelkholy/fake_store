import 'package:fake_store/features/home/domain/entities/category.dart';
import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:fake_store/features/home/presentation/widgets/category/category_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryListView extends StatefulWidget {
  final List<Category?>? categoriesList;

  const CategoryListView({super.key, required this.categoriesList});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int? selectedSpecializationIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.categoriesList?.length,
        itemBuilder: (context, index) {
          final isSelected = selectedSpecializationIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedSpecializationIndex = null;
                  context.read<HomeBloc>().add(
                    const HomeEvent.getAllProducts(),
                  );
                } else {
                  selectedSpecializationIndex = index;
                  final categoryName = widget.categoriesList?[index]?.name;
                  if (categoryName != null) {
                    context.read<HomeBloc>().add(
                      HomeEvent.getCategoryProducts(categoryName),
                    );
                  }
                }
              });
            },
            child: CategoryListViewItem(
              categoriesList: widget.categoriesList?[index],
              itemIndex: index,
              selectedIndex: selectedSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
