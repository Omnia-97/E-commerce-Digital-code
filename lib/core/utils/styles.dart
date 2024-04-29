import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles{
  static TextStyle hintTextStyle = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGrayColor,
  );
  static TextStyle buttonTextStyle = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteColor,
  );
  static TextStyle saleTextStyle = GoogleFonts.poppins(
    fontSize: 24.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteColor,
  );
  static TextStyle offerTextStyle = GoogleFonts.heebo(
    fontSize: 26.sp,
    fontWeight: FontWeight.w800,
    color: AppColors.whiteColor,
  );
  static TextStyle titleTextStyle = GoogleFonts.heebo(
    fontSize: 18.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.titleColor,
  );
  static TextStyle viewAllTextStyle = GoogleFonts.heebo(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: AppColors.primaryColor,
  );
  static TextStyle productNameTextStyle = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.productNameColor,
  );
  static TextStyle originalPriceTextStyle = GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGrayColor,
    decoration: TextDecoration.lineThrough,
    decorationColor: AppColors.lightGrayColor,
  );
  static TextStyle offerPercentTextStyle = GoogleFonts.poppins(
    fontSize: 10.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.badgeColor,
  );
  static TextStyle readMoreTextStyle = GoogleFonts.heebo(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.primaryColor,
  );
}