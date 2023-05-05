import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Row(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(onTap: () {
                        Navigator.pushNamed(context, 'calling-sreen');
                      }, child: Image.asset(AppAssets.call, height: 6.h)),
                      Container(
                        margin: EdgeInsets.only(right: 1.w),
                        width:
                        MediaQuery.of(context).size.width * 0.18,
                        height:
                        MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                        child: Center(
                          child: Text(
                            'مبلغ الطلبات',
                            style: TextStyle(
                              color: AppColors.orangeColor,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width:
                        MediaQuery.of(context).size.width * 0.18,
                        height:
                        MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                        child: Center(
                          child: Text(
                            'عدد الطلبات',
                            style: TextStyle(
                              color: AppColors.orangeColor,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      GestureDetector(onTap: () {
                        Navigator.pushNamed(context, 'dollar-screen');
                      }, child: Image.asset(AppAssets.call, height: 6.h)),
                      // SizedBox(width: 5.w),
                      Container(
                        margin: EdgeInsets.only(right: 1.w),
                        width:
                        MediaQuery.of(context).size.width * 0.18,
                        height:
                        MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                        child: Center(
                          child: Text(
                            'الصافي لك',
                            style: TextStyle(
                              color: AppColors.greenColor,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width:
                        MediaQuery.of(context).size.width * 0.18,
                        height:
                        MediaQuery.of(context).size.height / 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.sp),
                        ),
                        child: Center(
                          child: Text(
                            'الديون',
                            style: TextStyle(
                              color: AppColors.redColor,
                              fontSize: 11.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 2.w),
              Column(
                children: [
                  Text(
                    'مرحباً كابتن',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15.sp,
                      color: AppColors.blackColor,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Text(
                      'omar abdelaziz',
                      style: TextStyle(
                        overflow: TextOverflow.ellipsis,
                        fontWeight: FontWeight.w800,
                        fontSize: 15.sp,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Text(
                      'كن نشطاً دوماً وانتبه لعملك',
                      style: TextStyle(
                        fontSize: 14.2.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
