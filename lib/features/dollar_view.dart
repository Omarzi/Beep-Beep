import 'package:beep_beep/features/layout/presentation/views/sub_pages/widgets/custom_appbar.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DollarView extends StatelessWidget {
  const DollarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Image.asset(AppAssets.notification)),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'settings-screen');
                        },
                        child: Image.asset(AppAssets.settings)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    height: MediaQuery.of(context).size.height / 6.8,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.3.w,
                      ),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Center(
                      child: Text(
                        'مبلغ الطلبات',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    height: MediaQuery.of(context).size.height / 6.8,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.3.w,
                      ),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Center(
                      child: Text(
                        'عدد الطلبات',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    height: MediaQuery.of(context).size.height / 6.8,
                    decoration: BoxDecoration(
                      color: AppColors.babyGreenColor,
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.3.w,
                      ),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Center(
                      child: Text(
                        'الربح الصافي لك',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.43,
                    height: MediaQuery.of(context).size.height / 6.8,
                    decoration: BoxDecoration(
                      color: const Color(0xFFffadad),
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.3.w,
                      ),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Center(
                      child: Text(
                        'الديون للشركة',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height / 7.5,
                    decoration: BoxDecoration(
                      color: AppColors.babyGreenColor,
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.3.w,
                      ),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'عملية تسديد',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'الوقت',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                            Text(
                              'التاريخ المعملية',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height / 7.5,
                    decoration: BoxDecoration(
                      color: AppColors.babyGreenColor,
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.3.w,
                      ),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'عملية تسديد',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'الوقت',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                            Text(
                              'التاريخ المعملية',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.6.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.95,
                    height: MediaQuery.of(context).size.height / 7.5,
                    decoration: BoxDecoration(
                      color: AppColors.babyGreenColor,
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 0.3.w,
                      ),
                      borderRadius: BorderRadius.circular(20.sp),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'عملية تسديد',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'الوقت',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                            Text(
                              'التاريخ المعملية',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.greenColor2,
                                  fontSize: 18.sp,
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.greenColor2,
                                      offset: const Offset(0, 1),
                                      spreadRadius: 0.2,
                                      blurRadius: 20,
                                    ),
                                  ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 0.6.h),
            ],
          ),
        ),
      ),
    );
  }
}
