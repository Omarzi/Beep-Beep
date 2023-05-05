import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sizer/sizer.dart';

class NowView extends StatelessWidget {
  const NowView({Key? key}) : super(key: key);

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
                child: Row(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(context, 'calling-sreen');
                                    },
                                    child: Image.asset(AppAssets.call,
                                        height: 6.h)),
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
              ),
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

              /// Cards
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(16.sp),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.6),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(),
                          Text(
                            'اسم المحل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            'NO: 101',
                            style: TextStyle(
                              color: AppColors.brownColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'التوصيل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'سعر الطلب',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'عنوان الطلب',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'نمرة صاحب المحل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'نمرة الزبون',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, 'choose-reason');
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 1.2.w, vertical: 0.4.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.sp),
                                color: AppColors.redColor,
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1.sp,
                                ),
                              ),
                              child: Text(
                                'ارجاع الطلب',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 11.sp,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.2.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.greenColor,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'تم التسليم',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(16.sp),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.6),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(),
                          Text(
                            'اسم المحل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            'NO: 101',
                            style: TextStyle(
                              color: AppColors.brownColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'التوصيل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'سعر الطلب',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'عنوان الطلب',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'نمرة صاحب المحل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'نمرة الزبون',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.2.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.redColor,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'ارجاع الطلب',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.2.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.greenColor,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'تم التسليم',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Container(
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.circular(16.sp),
                    boxShadow: [
                      BoxShadow(
                        color: AppColors.blackColor.withOpacity(0.6),
                        spreadRadius: 0.2,
                        blurRadius: 5,
                        offset:
                            const Offset(0, 0.5), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(),
                          Text(
                            'اسم المحل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w800,
                              fontSize: 15.sp,
                            ),
                          ),
                          Text(
                            'NO: 101',
                            style: TextStyle(
                              color: AppColors.brownColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            'التوصيل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'سعر الطلب',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'عنوان الطلب',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'نمرة صاحب المحل',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                          Text(
                            'نمرة الزبون',
                            style: TextStyle(
                              color: AppColors.blackColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 13.5.sp,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.2.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.redColor,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'ارجاع الطلب',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 1.2.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.greenColor,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'تم التسليم',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 2.h),
            ],
          ),
        ),
      ),
    );
  }

  showCustomToast(BuildContext context) {
    FToast fToast = FToast();
    fToast.init(context);
    Widget toast = Container(
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.4.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.sp),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'اختر سبباً لارجاع الطلب ',
                style: TextStyle(
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 14.sp,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
