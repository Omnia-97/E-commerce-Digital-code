import 'package:digital_code_company_task/config/routes/page_routes_name.dart';
import 'package:digital_code_company_task/core/components/custom_button.dart';
import 'package:digital_code_company_task/core/components/custom_text_form_field.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 106.h, left: 16.w, right: 16.w),
        child: Column(
          children: [
            Image.asset(AppImages.registerImage),
            SizedBox(
              height: 64.h,
            ),
            customTextFormField(
              hintText: AppStrings.fullNameHintText,
              keyboardType: TextInputType.text,
              prefixIcon: AppImages.icUser,
              padding: EdgeInsets.only(
                left: 16.w,
                right: 10.w,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            customTextFormField(
              hintText: AppStrings.emailHintText,
              keyboardType: TextInputType.emailAddress,
              prefixIcon: AppImages.icEmail,
              padding: EdgeInsets.only(
                left: 16.w,
                right: 10.w,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            customTextFormField(
              hintText: AppStrings.passwordHintText,
              keyboardType: TextInputType.text,
              isPassword: true,
              prefixIcon: AppImages.icPassword,
              padding: EdgeInsets.only(
                left: 16.w,
                right: 10.w,
              ),
            ),
            SizedBox(
              height: 8.h,
            ),
            customTextFormField(
              hintText: AppStrings.phoneHintText,
              keyboardType: TextInputType.phone,
              prefixIcon: AppImages.icPassword,
              padding: EdgeInsets.only(
                left: 16.w,
                right: 10.w,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            customButton(buttonText: AppStrings.signUpButtonText, onTap: (){
              Navigator.pushNamedAndRemoveUntil(context, PagesRouteName.layout, (route) => false);
            }),
            SizedBox(
              height: 24.h,
            ),
            navigateText(
                text: AppStrings.haveAnAccount,
                navigateText: AppStrings.logInButtonText,
                onTap: () {
                  Navigator.pushNamed(context, PagesRouteName.logIn);
                })
          ],
        ),
      ),
    );
  }
}
