import 'package:carousel_slider/carousel_slider.dart';
import 'package:fake_store/core/helpers/spacing.dart';
import 'package:fake_store/core/theming/app_colors.dart';
import 'package:fake_store/features/home/data/banner_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 14 / 6.5,
            viewportFraction: 1,
            autoPlay: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentImageIndex = index;
              });
            },
          ),
          items: bannerImages.map((image) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            );
          }).toList(),
        ),
        verticalSpace(10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: bannerImages.asMap().entries.map((entry) {
            return Container(
              width: 8.w,
              height: 4.h,
              margin: EdgeInsets.symmetric(horizontal: 4.w),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: currentImageIndex == entry.key
                    ? AppColors.darkGray
                    : AppColors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
