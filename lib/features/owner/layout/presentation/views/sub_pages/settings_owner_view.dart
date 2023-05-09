import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../../utils/theme/colors.dart';

class SettingsOwnerView extends StatelessWidget {
  const SettingsOwnerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 1.332.h),
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30.sp),
                    bottomLeft: Radius.circular(30.sp),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'calling-sreen');
                        },
                        child: Image.asset(
                          AppAssets.call,
                          height: 6.h,
                        ),
                      ),
                      Text(
                        'مرحبا كباب السيد',
                        style: TextStyle(
                          color: AppColors.greyPlayedColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 16.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Image.asset(AppAssets.notification),
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_forward,
                        color: AppColors.blackColor,
                        size: 22.sp,
                      ),
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 52.sp,
                backgroundColor: AppColors.primaryColor,
                child: CircleAvatar(
                  radius: 48.sp,
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Text(
                      'الصورة',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  width: double.infinity,
                  // height: MediaQuery.of(context),
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(16.sp),
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.8.sp,
                      )),
                  child: Center(
                    child: Text(
                      'تغيير الباسورد',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  width: double.infinity,
                  // height: MediaQuery.of(context),
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(16.sp),
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.8.sp,
                      )),
                  child: Center(
                    child: Text(
                      'ارسال شكوي واقتراح',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  width: double.infinity,
                  // height: MediaQuery.of(context),
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(16.sp),
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.8.sp,
                      )),
                  child: Center(
                    child: Text(
                      'شارك التطبيق واحصل علي توصيل مجاني',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  width: double.infinity,
                  // height: MediaQuery.of(context),
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(16.sp),
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.8.sp,
                      )),
                  child: Center(
                    child: Text(
                      'من نحن .؟',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: AppColors.blackColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w),
                child: Container(
                  width: double.infinity,
                  // height: MediaQuery.of(context),
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(16.sp),
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.8.sp,
                      )),
                  child: Center(
                    child: Text(
                      'تسجيل خروج',
                      style: TextStyle(
                        shadows: [
                          BoxShadow(
                              spreadRadius: 0.2,
                              color: AppColors.blackColor.withOpacity(0.7),
                              blurRadius: 10,
                              offset: const Offset(1, 1)),
                        ],
                        fontWeight: FontWeight.w600,
                        color: AppColors.redColor,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
