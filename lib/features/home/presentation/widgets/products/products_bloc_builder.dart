import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:fake_store/features/home/presentation/widgets/products/product_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsBlocBuilder extends StatelessWidget {
  const ProductsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          current is ProductsSuccess ||
          current is ProductsError ||
          current is ProductsLoading,
      builder: (context, state) {
        return state.maybeWhen(
          productsLoading: () {
            return setupLoading();
          },
          productsSuccess: (productsList) {
            return setupSuccess(productsList);
          },
          productsError: (errorHandler) => setupError(),
          orElse: () {
            return const SizedBox.shrink();
          },
        );
      },
    );
  }

  Widget setupLoading() {
    return const Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setupSuccess(productsList) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ProductList(productList: productsList),
    );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
