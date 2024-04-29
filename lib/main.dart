import 'package:digital_code_company_task/e_commerce_app.dart';
import 'package:digital_code_company_task/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: const ECommerceApp(),
    ),
  );
}
