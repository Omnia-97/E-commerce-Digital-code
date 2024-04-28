import 'package:digital_code_company_task/config/routes/page_routes_name.dart';
import 'package:digital_code_company_task/features/log_in/presentation/pages/log_in.dart';
import 'package:digital_code_company_task/features/register/presentation/pages/register.dart';
import 'package:digital_code_company_task/layout_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case PagesRouteName.logIn:
        return MaterialPageRoute(
          builder: (context) => const LogInPage(),
          settings: settings,
        );
      case PagesRouteName.register:
        return MaterialPageRoute(
          builder: (context) => const RegisterPage(),
          settings: settings,
        );
      case PagesRouteName.layout:
        return MaterialPageRoute(
          builder: (context) => const LayoutScreen(),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
