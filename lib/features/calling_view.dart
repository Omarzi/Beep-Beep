import 'package:beep_beep/features/layout/presentation/views/sub_pages/widgets/custom_appbar.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CallingView extends StatelessWidget {
  const CallingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.notification),
                    Image.asset(AppAssets.settings),
                  ],
                ),
              ),
              SizedBox(height: 5.h),
              Image.asset(AppAssets.calling),
              SizedBox(height: 5.h),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 3.w),
                padding: EdgeInsets.symmetric(vertical: 1.h),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primaryColor,
                    width: 1,
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image.asset(AppAssets.facebook, width: 18.w),
                    Image.asset(AppAssets.telegram, width: 18.w),
                    Image.asset(AppAssets.instigram, width: 18.w),
                    Image.asset(AppAssets.whatsaap, width: 18.w),
                    Image.asset(AppAssets.contact, width: 18.w),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
