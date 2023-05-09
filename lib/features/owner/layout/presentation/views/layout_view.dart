import 'package:beep_beep/features/owner/layout/presentation/views/pages/finished_order_view.dart';
import 'package:beep_beep/features/owner/layout/presentation/views/pages/now_orders_view.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:bottom_bar/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LayoutOwnerView extends StatefulWidget {
  const LayoutOwnerView({Key? key}) : super(key: key);

  @override
  State<LayoutOwnerView> createState() => _LayoutOwnerViewState();
}

class _LayoutOwnerViewState extends State<LayoutOwnerView> {
  int currentIndex = 1;

  List<Widget> pages = [
    const FinishedOrdersView(),
    const NowOrdersView(),
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
            title: Text('طلبات منتهية', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12.sp),),
            activeColor: AppColors.primaryColor,
          ),
          BottomBarItem(
            inactiveIcon: const Icon(Icons.home),
            icon: const Icon(Icons.home_outlined),
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
