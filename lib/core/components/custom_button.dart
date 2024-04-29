import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton({
  final void Function()? onTap,
  required String buttonText,
}) {
  return Container(
    width: 343.w,
    height: 57.h,
    padding: EdgeInsets.symmetric(horizontal: 16.h),
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: AppColors.primaryColor,
      borderRadius: BorderRadius.circular(5),
      boxShadow: [
        BoxShadow(
          color: AppColors.buttonShadow,
          blurRadius: 30,
          offset: const Offset(0, 10),
        )
      ],
    ),
    child: InkWell(
      onTap: onTap,
      child: Text(
        buttonText,
        style: AppStyles.buttonTextStyle,
      ),
    ),
  );
}

Widget navigateText({
  required String text,
  required String navigateText,
  final void Function()? onTap,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        text,
        style: AppStyles.hintTextStyle,
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          navigateText,
          style: AppStyles.hintTextStyle.copyWith(
            fontWeight: FontWeight.w700,
            color: AppColors.primaryColor,
          ),
        ),
      )
    ],
  );
}
