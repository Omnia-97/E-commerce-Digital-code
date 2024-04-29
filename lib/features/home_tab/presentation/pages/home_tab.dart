import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:digital_code_company_task/features/home_tab/models/home_model.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/about_us_widget.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/carouse_widget.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/category_item.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/custom_grid_view.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/list_view_product_widget.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/product_item.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/widgets/text_row_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeTab extends StatelessWidget {
  HomeTab({super.key});
  List<String> categoriesText = [
    AppStrings.accessoriesText,
    AppStrings.clocksText,
    AppStrings.furnitureText,
    AppStrings.accessoriesText,
    AppStrings.clocksText,
    AppStrings.furnitureText,
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 18.h,
        ),
        const CarouselWidget(),
        SizedBox(
          height: 11.h,
        ),
        SizedBox(
          height: 99.h,
          child: Column(
            children: [
              const TextRowWidget(
                titleText: AppStrings.categoriesText,
                text: AppStrings.viewAllText,
              ),
              SizedBox(
                height: 7.h,
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 18.w),
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return CategoryItem(
                            categoryName: categoriesText[index]);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                            width: 11.w,
                          ),
                      itemCount: categoriesText.length),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.h,
        ),
        SizedBox(
          height: 271.h,
          child: Column(
            children: [
              const TextRowWidget(
                titleText: AppStrings.mostPopularText,
                text: AppStrings.seeMoreText,
              ),
              SizedBox(
                height: 6.h,
              ),
              ListViewProductWidget(),
            ],
          ),
        ),
        SizedBox(
          height: 21.h,
        ),
        SizedBox(
          height: 202.h,
          child: Padding(
            padding: EdgeInsets.only(left: 19.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.aboutUsText,
                  style: AppStyles.titleTextStyle,
                ),
                SizedBox(
                  height: 5.h,
                ),
                const AboutUsWidget(),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        SizedBox(
          height: 271.h,
          child: Column(
            children: [
              const TextRowWidget(
                  titleText: AppStrings.popularForWomanText,
                  text: AppStrings.seeMoreText),
              SizedBox(
                height: 6.h,
              ),
              ListViewProductWidget(),
            ],
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        SizedBox(
          height: 271.h,
          child: Column(
            children: [
              const TextRowWidget(
                  titleText: AppStrings.popularForMenText,
                  text: AppStrings.seeMoreText),
              SizedBox(
                height: 6.h,
              ),
              ListViewProductWidget(),
            ],
          ),
        ),
        SizedBox(
          height: 22.h,
        ),
        const TextRowWidget(
            titleText: AppStrings.hotDealsText,
            text: AppStrings.seeMoreText),
        SizedBox(
          height: 6.h,
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.w, bottom: 13.h,right: 12.w),
          child: CustomGridView(),
        ),


      ],
    );
  }
}
