import 'package:fake_store/features/home/presentation/widgets/category/category_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryListView extends StatefulWidget {
  const CategoryListView({super.key});

  @override
  State<CategoryListView> createState() => _CategoryListViewState();
}

class _CategoryListViewState extends State<CategoryListView> {
  int? selectedSpecializationIndex;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) {
          final isSelected = selectedSpecializationIndex == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                if (isSelected) {
                  selectedSpecializationIndex = null;
                } else {
                  selectedSpecializationIndex = index;
                }
              });
            },
            child: CategoryListViewItem(
              itemIndex: index,
              selectedIndex: selectedSpecializationIndex,
            ),
          );
        },
      ),
    );
  }
}
