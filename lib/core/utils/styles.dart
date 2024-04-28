import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppStyles{
  static TextStyle hintTextStyle = GoogleFonts.poppins(
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
    color: AppColors.hintTextColor,
  );
  static TextStyle buttonTextStyle = GoogleFonts.poppins(
    fontSize: 14.sp,
    fontWeight: FontWeight.w700,
    color: AppColors.whiteColor,
  );
}