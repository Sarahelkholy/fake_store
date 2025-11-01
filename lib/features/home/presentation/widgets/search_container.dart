import 'package:fake_store/core/theming/app_colors.dart';
import 'package:fake_store/core/theming/app_text_styels.dart';
import 'package:fake_store/features/home/presentation/bloc/bloc/home_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<HomeBloc>();

    return TextField(
      controller: bloc.searchController,
      cursorColor: AppColors.grey,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.lightGrey,
        prefixIcon: Icon(CupertinoIcons.search, color: AppColors.grey),
        hintText: 'Search...',
        hintStyle: AppTextStyels.font14GreyBold,
        border: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.lightGrey),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      style: const TextStyle(color: Colors.black, fontSize: 15),
      onChanged: (searchedCharacter) {
        bloc.add(HomeEvent.searchProducts(searchedCharacter));
      },
    );
  }
}
