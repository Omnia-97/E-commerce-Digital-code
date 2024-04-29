import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextRowWidget extends StatelessWidget {
  const TextRowWidget({super.key, required this.titleText,required this.text});
  final String titleText;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w),
      child: Row(
        children: [
          Text(
            titleText,
            style: AppStyles.titleTextStyle,
          ),
          const Spacer(),
          Text(text , style: AppStyles.viewAllTextStyle),
        ],
      ),
    );
  }
}
