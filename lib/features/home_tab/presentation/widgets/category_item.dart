import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryName,
  });
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 104.w,
      height: 65.h,
      padding: EdgeInsets.only(top: 46.h,left: 9.w),
      //alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        color: AppColors.categoryItemColor,
        borderRadius: BorderRadius.circular(8.r),
        image: const DecorationImage(
          image: AssetImage(AppImages.categoryImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Text(
        categoryName,
        style: AppStyles.viewAllTextStyle.copyWith(
          color: AppColors.blackColor,
        ),
      ),
    );
  }
}
