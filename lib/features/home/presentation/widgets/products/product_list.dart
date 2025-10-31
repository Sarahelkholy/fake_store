import 'package:fake_store/features/home/data/models/product_model.dart';
import 'package:fake_store/features/home/presentation/widgets/products/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductList extends StatelessWidget {
  final List<ProductModel?>? productList;
  const ProductList({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: productList?.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 15.h,
        childAspectRatio: 0.8,
      ),
      itemBuilder: (context, index) {
        return ProductCard(productModel: productList?[index]);
      },
    );
  }
}
