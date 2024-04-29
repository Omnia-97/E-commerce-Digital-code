import 'package:carousel_slider/carousel_slider.dart';
import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:digital_code_company_task/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({super.key});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  CarouselController controller = CarouselController();
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        children: [
          CarouselSlider(
            items: [
              Container(
                width: 335.w,
                height: 147.h,
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(11.r),
                  image: DecorationImage(
                    image: AssetImage(AppImages.promotionImage),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding:  EdgeInsets.only(top: 23.h, left: 8.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.superFlashSale,
                        style: AppStyles.saleTextStyle,
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: 3.w),
                        child: Text(
                          AppStrings.offText,
                          style: AppStyles.offerTextStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(11.r),
                child: Image.asset(
                  AppImages.promotionImage2,
                  width: 335.w,
                  height: 147.h,
                  opacity: const AlwaysStoppedAnimation(0.9),
                  fit: BoxFit.cover,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(11.r),
                child: Image.asset(
                  width: 335.w,
                  height: 147.h,
                  opacity: const AlwaysStoppedAnimation(0.9),
                  AppImages.promotionImage3,
                  fit: BoxFit.cover,
                ),
              ),
            ],
            options: CarouselOptions(
              viewportFraction: 1,
              enableInfiniteScroll: true,
              autoPlay: true,
              aspectRatio: 18 / 9,
              initialPage: 0,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  current = index;
                });
              },
            ),
          ),
          SizedBox(
            height: 19.h,
          ),
          AnimatedSmoothIndicator(
            activeIndex: current,
            count: 3,
            effect: ColorTransitionEffect(
              activeDotColor: AppColors.primaryColor,
              dotColor: AppColors.dotColor,
              dotHeight: 8,
              dotWidth: 8,
            ), // your preferred effect
            onDotClicked: (index) {
              current = index;

              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
