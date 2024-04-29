import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget searchTextFormField() {
  return SizedBox(
    height: 38.h,
    width: 250.w,
    child: TextFormField(
      keyboardType: TextInputType.text,
      cursorColor: AppColors.primaryColor,
      style: const TextStyle(color: AppColors.primaryColor),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 8.h,left: 0),
        filled: true,
        fillColor: Colors.transparent,
        hintText: 'Search Product',
        hintStyle:
            AppStyles.hintTextStyle.copyWith(color: AppColors.hintTextColor),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 1.w,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 1.w,
          ),
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(
            left: 17.w,
            right: 5.w,
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: 11.h,bottom: 11.h),
            child: SvgPicture.asset(
              AppImages.icSearch,
            ),
          ),
        ),
      ),
    ),
  );
}
