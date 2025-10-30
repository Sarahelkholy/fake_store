import 'package:fake_store/core/helpers/spacing.dart';
import 'package:fake_store/core/theming/app_colors.dart';
import 'package:fake_store/core/theming/app_text_styels.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryListViewItem extends StatelessWidget {
  // final SpecializationData? specializationData;
  final int itemIndex;
  final int selectedIndex;

  const CategoryListViewItem({
    super.key,
    // this.specializationData,
    required this.itemIndex,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
      child: Column(
        children: [
          itemIndex == selectedIndex
              ? Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: AppColors.grey),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    radius: 28,
                    backgroundColor: AppColors.lightGrey,
                    child: Image.asset(
                      'assets/images/category.png',
                      height: 32.h,
                      width: 32.w,
                    ),
                  ),
                )
              : CircleAvatar(
                  radius: 28,
                  backgroundColor: AppColors.lightGrey,
                  child: Image.asset(
                    'assets/images/category.png',
                    height: 30.h,
                    width: 30.w,
                  ),
                ),
          verticalSpace(8),
          Text(
            // specializationData?.name ??
            'Category',
            style: itemIndex == selectedIndex
                ? AppTextStyels.font14DarkBlueBold
                : AppTextStyels.font12DarkBlueRegular,
          ),
        ],
      ),
    );
  }
}
