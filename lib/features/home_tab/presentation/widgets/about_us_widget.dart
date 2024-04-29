import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.w,
      height: 169.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.r),
        image: const DecorationImage(
          image: AssetImage(
            AppImages.aboutUsImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 22.w, top: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.whoWeAreText,
              style: AppStyles.saleTextStyle,
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.w),
              child: Text(
                AppStrings.basicText,
                style: AppStyles.hintTextStyle.copyWith(
                  color: AppColors.whiteColor,
                ),
              ),
            ),
            SizedBox(
              height: 13.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 7.w),
              child: Text(
                AppStrings.readMore,
                style: AppStyles.readMoreTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
