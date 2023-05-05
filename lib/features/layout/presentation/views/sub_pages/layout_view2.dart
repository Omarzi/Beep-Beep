import 'package:beep_beep/features/layout/presentation/views/sub_pages/fawry_orders_view.dart';
import 'package:beep_beep/features/layout/presentation/views/sub_pages/no_talabat_view.dart';
import 'package:beep_beep/features/layout/presentation/views/sub_pages/now_talabat_view.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LayoutView2 extends StatefulWidget {
  const LayoutView2({Key? key}) : super(key: key);

  @override
  State<LayoutView2> createState() => _LayoutView2State();
}

class _LayoutView2State extends State<LayoutView2> {
  int currentIndex = 2;

  List<Widget> pages = [
    const NoTalabatView(),
    const NowTalabatView(),
    const FawryOrdersView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomBar(
        selectedIndex: currentIndex,
        items: [
          BottomBarItem(
            inactiveIcon: Text('طلبات منتهية', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
            icon: const Icon(Icons.add_business_outlined),
            title: Text('طلبات منتهية', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
            activeColor: AppColors.primaryColor,
          ),
          BottomBarItem(
            inactiveIcon: Image.asset(AppAssets.delivery),
            icon: Image.asset(AppAssets.delivery),
            title: Container(),
            activeColor: AppColors.primaryColor,
          ),
          BottomBarItem(
            inactiveIcon: Text('الطلبات الحالية', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
            icon: const Icon(Icons.login_outlined),
            title: Text('الطلبات الحالية', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
            activeColor: AppColors.primaryColor,
          ),
        ],
        backgroundColor: Colors.white,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
