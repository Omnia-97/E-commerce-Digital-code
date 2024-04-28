import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'config/theming/app_theme.dart';

class ECommerceApp extends StatelessWidget {
  const ECommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        //onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      ),
    );
  }
}
