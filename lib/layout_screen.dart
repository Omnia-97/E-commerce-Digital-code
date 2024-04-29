import 'package:digital_code_company_task/core/components/search_text_form_feild.dart';
import 'package:digital_code_company_task/core/utils/app_colors.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
import 'package:digital_code_company_task/core/utils/app_strings.dart';
import 'package:digital_code_company_task/features/cart_tab/presentation/pages/cart_tab.dart';
import 'package:digital_code_company_task/features/explore_tab/presentation/pages/explore_tab.dart';
import 'package:digital_code_company_task/features/home_tab/presentation/pages/home_tab.dart';
import 'package:digital_code_company_task/features/offer_tab/presentation/pages/offer_tab.dart';
import 'package:digital_code_company_task/features/user_tab/presentation/pages/user_tab.dart';
import 'package:digital_code_company_task/my_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = Provider.of<MyProvider>(context).selectedIndex;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 66.h,
        title: Padding(
          padding: EdgeInsets.only(
            top: 13.h,
          ),
          child: Row(
            children: [
              searchTextFormField(),
              SizedBox(
                width: 14.w,
              ),
              Container(
                width: 37.w,
                height: 37.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.containerColor,
                  image: DecorationImage(
                    image: AssetImage(
                      AppImages.filterImage,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Badge(
                padding: EdgeInsets.zero,
                smallSize: 8.w,
                backgroundColor: AppColors.badgeColor,
                child: SvgPicture.asset(
                  AppImages.icNotify,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 74.h,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: BorderDirectional(
            top: BorderSide(color: AppColors.borderColor, width: 1.w),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            Provider.of<MyProvider>(context, listen: false).setIndex(index);
          },
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                height: 18.w,
                AppImages.icHome,
                colorFilter: const ColorFilter.mode(
                    AppColors.lightGrayColor, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                height: 18.w,
                AppImages.icHome,
                colorFilter: const ColorFilter.mode(
                    AppColors.primaryColor, BlendMode.srcIn),
              ),
              label: AppStrings.homeText,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                height: 18.w,
                AppImages.icExplore,
                colorFilter: const ColorFilter.mode(
                    AppColors.lightGrayColor, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                height: 18.w,
                AppImages.icExplore,
                colorFilter: const ColorFilter.mode(
                    AppColors.primaryColor, BlendMode.srcIn),
              ),
              label: AppStrings.exploreText,
            ),
            BottomNavigationBarItem(
              icon: Badge(
                backgroundColor: AppColors.badgeColor,
                alignment: Alignment.topRight,
                smallSize: 20.w,
                label: const Text(
                  '2',
                ),
                child: SvgPicture.asset(
                  AppImages.icCart,
                  height: 18.w,
                  colorFilter: const ColorFilter.mode(
                      AppColors.lightGrayColor, BlendMode.srcIn),
                ),
              ),
              activeIcon: Badge(
                backgroundColor: AppColors.badgeColor,
                smallSize: 20.w,
                alignment: Alignment.topRight,
                label: const Text(
                  '2',
                ),
                child: SvgPicture.asset(
                  AppImages.icCart,
                  height: 18.w,
                  colorFilter: const ColorFilter.mode(
                      AppColors.primaryColor, BlendMode.srcIn),
                ),
              ),
              label: AppStrings.cartText,
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                height: 18.w,
                AppImages.icOffer,
                colorFilter: const ColorFilter.mode(
                    AppColors.lightGrayColor, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                AppImages.icOffer,
                colorFilter: const ColorFilter.mode(
                    AppColors.primaryColor, BlendMode.srcIn),
              ),
              label: 'Offer',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                height: 18.w,
                AppImages.icProfile,
                colorFilter: const ColorFilter.mode(
                    AppColors.lightGrayColor, BlendMode.srcIn),
              ),
              activeIcon: SvgPicture.asset(
                height: 18.w,
                AppImages.icProfile,
                colorFilter: const ColorFilter.mode(
                    AppColors.primaryColor, BlendMode.srcIn),
              ),
              label: AppStrings.profileText,
            ),
          ],
        ),
      ),
      body: tabs[selectedIndex],
    );
  }
}

List<Widget> tabs = [
  HomeTab(),
  const ExploreTab(),
  const CartTab(),
  const OfferTab(),
  const UserTab(),
];
