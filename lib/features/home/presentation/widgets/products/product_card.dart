import 'package:fake_store/core/theming/app_colors.dart';
import 'package:fake_store/core/theming/app_text_styels.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({
    super.key,
    this.image,
    required this.price,
    this.onTap,
    required this.title,
    required this.id,
  });

  final String? image;
  final String title;
  final String price;
  final String id;
  final void Function()? onTap;

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isInWishlist = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 2.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: AppColors.lightGrey,
          border: Border.all(color: AppColors.grey, width: 0.7),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.w),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  widget.image ?? "assets/images/product.jpg",
                  height: 115.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(Icons.broken_image, size: 50);
                  },
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 2.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'DANVOUY Womens T Shirt Casual Cotton Short',
                      style: AppTextStyels.font14DarkBlueBold,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isInWishlist = !isInWishlist;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(left: 6.w),
                      child: Icon(
                        isInWishlist
                            ? CupertinoIcons.heart_fill
                            : CupertinoIcons.heart,
                        color: Colors.red,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text('EGP 200', style: AppTextStyels.font12GreyRegular),
            ),
          ],
        ),
      ),
    );
  }
}
