import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:digital_code_company_task/features/home_tab/models/home_model.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ListViewProductWidget extends StatelessWidget {
  ListViewProductWidget({super.key});
  final List<HomeModel> productsList = [
    const HomeModel(
      productImage: AppImages.choseProductImage,
      productName: AppStrings.choseProductText,
    ),
    const HomeModel(
      productImage: AppImages.bagProductImage,
      productName: AppStrings.bagProductText,
    ),
    const HomeModel(
      productImage: AppImages.product3Image,
      productName: AppStrings.nikeProductText,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 16.w),
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ProductItem(
              homeModel: productsList[index],
              width: 141.w,
              height: 238.h,
              isFavorite: true,
            );
          },
          separatorBuilder: (context, index) => SizedBox(
            width: 16.w,
          ),
          itemCount: 3,
        ),
      ),
    );
  }
}
