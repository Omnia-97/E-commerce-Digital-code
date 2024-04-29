import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/features/home_tab/models/home_model.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_strings.dart';

class CustomGridView extends StatelessWidget {
  CustomGridView({super.key});

  final List<HomeModel> productsList = [
    const HomeModel(
      productImage: AppImages.hot1Image,
      productName: AppStrings.hotDealsName,
    ),
    const HomeModel(
      productImage: AppImages.hot2Image,
      productName: AppStrings.hotDealsName,
    ),
    const HomeModel(
      productImage: AppImages.hot3Image,
      productName: AppStrings.hotDealsName,
    ),
    const HomeModel(
      productImage: AppImages.hot4Image,
      productName: AppStrings.hotDealsName,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 576.h,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 13.w,
          mainAxisSpacing: 12.h,
          childAspectRatio: 4 / 6.45,
        ),
        itemBuilder: (context, index) {
          return ProductItem(
            homeModel: productsList[index],
            width: 156.w,
            height: 270.h,
            isFavorite: false,
          );
        },
        itemCount: 4,
      ),
    );
  }
}
