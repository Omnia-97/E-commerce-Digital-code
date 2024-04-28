import 'package:digital_code_company_task/core/components/custom_button.dart';
import 'package:digital_code_company_task/core/components/custom_text_form_field.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 90.h, left: 16.w, right: 16.w),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26.w, right: 10.w),
              child: Image.asset(AppImages.logInImage),
            ),
            SizedBox(
              height: 78.h,
            ),
            customTextFormField(
              hintText: AppStrings.emailHintText,
              prefixIcon: AppImages.icEmail,
              padding: EdgeInsets.only(left: 18.w, right: 10.w),
            ),
            SizedBox(height: 8.h,),
            customTextFormField(
              hintText: AppStrings.passwordHintText,
              prefixIcon: AppImages.icPassword,
              padding: EdgeInsets.only(left: 16.w, right: 10.w),
            ),
            SizedBox(height: 16.h,),
            customButton(buttonText: AppStrings.logInButtonText),
            SizedBox(height: 31.h,),
            navigateText(text: AppStrings.dontHaveAnAccount, navigateText: AppStrings.register),

          ],
        ),
      ),
    );
  }
}
