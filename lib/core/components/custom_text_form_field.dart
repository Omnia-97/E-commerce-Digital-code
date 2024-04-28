import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget customTextFormField({
  final TextInputType? keyboardType,
  final bool? isPassword,
  bool obscureText = true,
  required final String hintText,
  required String prefixIcon,
  required EdgeInsetsGeometry padding,
}) {
  return SizedBox(
    height: 48.h,
    child: TextFormField(
      keyboardType: keyboardType,
      obscureText: isPassword ?? false ? obscureText : !obscureText,
      cursorColor: AppColors.primaryColor,
      style: const TextStyle(color: AppColors.primaryColor),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whiteColor,
        hintText: hintText,
        hintStyle: AppStyles.hintTextStyle,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1.w,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1.w,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.r),
          borderSide: BorderSide(
            color: AppColors.borderColor,
            width: 1.w,
          ),
        ),
        prefixIcon: Padding(
          padding:  padding,
          child: SvgPicture.asset(
            prefixIcon,
            width: 24.w,
              height: 24.h,
          ),
        ),
      ),
    ),
  );
}
