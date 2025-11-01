import 'package:fake_store/core/theming/app_colors.dart';
import 'package:fake_store/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyels {
  static TextStyle font14DarkBlueBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle font12DarkBlueRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font12GreyRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.regular,
  );
  static TextStyle font12DarkGreyRegular = TextStyle(
    fontSize: 12.sp,
    color: AppColors.darkGray,
    fontWeight: FontWeightHelper.regular,
  );

  static TextStyle font13DarkBlueMedium = TextStyle(
    fontSize: 13.sp,
    color: AppColors.darkBlue,
    fontWeight: FontWeightHelper.medium,
  );

  static TextStyle font14GreyBold = TextStyle(
    fontSize: 14.sp,
    color: AppColors.grey,
    fontWeight: FontWeightHelper.bold,
  );
}
