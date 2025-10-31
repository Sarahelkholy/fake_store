import 'package:fake_store/core/theming/app_colors.dart';
import 'package:fake_store/core/theming/app_text_styels.dart';
import 'package:fake_store/features/home/domain/entities/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryListViewItem extends StatelessWidget {
  final Category? categoriesList;
  final int itemIndex;
  final int? selectedIndex;

  const CategoryListViewItem({
    super.key,
    required this.itemIndex,
    this.selectedIndex,
    this.categoriesList,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: itemIndex == selectedIndex
          ? Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                border: Border.all(color: AppColors.grey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                categoriesList?.name ?? 'Category',
                style: AppTextStyels.font14DarkBlueBold,
              ),
            )
          : Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: AppColors.lightGrey,
                border: Border.all(color: AppColors.lightGrey),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                categoriesList?.name ?? 'Category',
                style: AppTextStyels.font13DarkBlueMedium,
              ),
            ),
    );
  }
}
