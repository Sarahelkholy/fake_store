import 'package:fake_store/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../../../core/helpers/spacing.dart';

class ProductsShimmerLoading extends StatelessWidget {
  const ProductsShimmerLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 15.h,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.shimmerGray,
              borderRadius: BorderRadius.circular(8.r),
              border: Border.all(color: AppColors.grey, width: 0.7),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image shimmer
                Padding(
                  padding: EdgeInsets.all(8.w),
                  child: Shimmer.fromColors(
                    baseColor: AppColors.shimmerGray,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 115.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                    ),
                  ),
                ),
                // Title shimmer
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 12.w,
                    vertical: 2.h,
                  ),
                  child: Shimmer.fromColors(
                    baseColor: AppColors.shimmerGray,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 18.h,
                      width: double.infinity,
                      color: Colors.white,
                    ),
                  ),
                ),
                verticalSpace(6),
                // Price shimmer
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  child: Shimmer.fromColors(
                    baseColor: AppColors.shimmerGray,
                    highlightColor: Colors.white,
                    child: Container(
                      height: 14.h,
                      width: 60.w,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
