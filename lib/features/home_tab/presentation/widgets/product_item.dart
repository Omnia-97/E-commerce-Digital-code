import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:digital_code_company_task/features/home_tab/models/home_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key,
      required this.homeModel,
      required this.width,
      required this.height,
      required this.isFavorite});
  final HomeModel homeModel;
  final double width;
  final double height;
  final bool isFavorite;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(5.r),
        border: Border.all(
          color: AppColors.borderColor,
          width: 1.w,
        ),
      ),
      child: isFavorite
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  homeModel.productImage,
                  width: 109.w,
                  height: 109.h,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  homeModel.productName,
                  style: AppStyles.productNameTextStyle,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  AppStrings.discountPriceText,
                  style: AppStyles.productNameTextStyle.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Text(
                      AppStrings.originalPriceText,
                      style: AppStyles.originalPriceTextStyle,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      AppStrings.percentOffText,
                      style: AppStyles.offerPercentTextStyle,
                    ),
                  ],
                )
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  homeModel.productImage,
                  width: 133.w,
                  height: 133.h,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  homeModel.productName,
                  style: AppStyles.productNameTextStyle,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Image.asset(AppImages.favStarsImage),
                SizedBox(
                  height: 16.h,
                ),
                Text(
                  AppStrings.discountPriceText,
                  style: AppStyles.productNameTextStyle.copyWith(
                    color: AppColors.primaryColor,
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  children: [
                    Text(
                      AppStrings.originalPriceText,
                      style: AppStyles.originalPriceTextStyle,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      AppStrings.percentOffText,
                      style: AppStyles.offerPercentTextStyle,
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
