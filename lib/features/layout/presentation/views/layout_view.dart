import 'package:beep_beep/features/layout/presentation/views/pages/now_view.dart';
import 'package:beep_beep/features/layout/presentation/views/pages/reg_view.dart';
import 'package:beep_beep/features/layout/presentation/views/pages/waiting_view.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({Key? key}) : super(key: key);

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int currentIndex = 1;

  List<Widget> pages = [
    const WaitingView(),
    const NowView(),
    const RegView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomBar(
        selectedIndex: currentIndex,
        items: [
          BottomBarItem(
            inactiveIcon: const Icon(Icons.add_business),
            icon: const Icon(Icons.add_business_outlined),
            title: Text('انتظار', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
            activeColor: AppColors.primaryColor,
          ),
          BottomBarItem(
            inactiveIcon: const Icon(Icons.home),
            icon: const Icon(Icons.home_outlined),
            title: Text('الحالية', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
            activeColor: AppColors.primaryColor,
          ),
          BottomBarItem(
            inactiveIcon: const Icon(Icons.login),
            icon: const Icon(Icons.login_outlined),
            title: Text('السجل', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
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
