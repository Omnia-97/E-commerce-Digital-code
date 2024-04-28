import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.whiteColor,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.whiteColor,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      unselectedItemColor: AppColors.lightGrayColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      elevation: 0,
      selectedIconTheme: IconThemeData(size: 18),
      unselectedIconTheme: IconThemeData(size: 18),
    ),
  );
}
