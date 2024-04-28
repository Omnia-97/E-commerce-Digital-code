import 'package:digital_code_company_task/core/components/search_text_form_feild.dart';
import 'package:digital_code_company_task/core/utils/app_images.dart';
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
        title: Row(children: [
          searchTextFormField(),

        ],),

      ),
      bottomNavigationBar: Container(
        height: 74.h,
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15.r),
          child: BottomNavigationBar(
           // iconSize: 24.h,
            //selectedFontSize: 0,
            //unselectedFontSize: 0,
            currentIndex: selectedIndex,
            onTap: (index) {
             Provider.of<MyProvider>(context).setIndex(index);
            },
            items:  [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(AppImages.icHome),
                  label: 'Home',),
            ],
          ),
        ),
      ),
      body: tabs[selectedIndex],

    );
  }
}
List<Widget> tabs = [
  const HomeTab(),
  const ExploreTab(),
  const CartTab(),
  const OfferTab(),
  const UserTab(),
];
