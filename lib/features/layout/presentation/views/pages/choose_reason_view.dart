import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ChooseReasonView extends StatelessWidget {
  const ChooseReasonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColors.blackColor,
                  size: 24.sp,
                ),
              ),
              Card(
                elevation: 50.sp,
                margin: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.sp),
                  side: BorderSide(
                    color: AppColors.blackColor,
                  ),
                ),
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.8,
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    bottom: 2.h,
                    top: 5.h,
                    left: 1.w,
                    right: 1.w,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'اختر سبباً لارجاع الطلب ',
                        style: TextStyle(
                          color: AppColors.blackColor,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.5.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.primaryColor,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.8),
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'زبون لا يرد',
                              style: TextStyle(
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.blackColor,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.5.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.primaryColor,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.8),
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'الجهاز مغلق',
                              style: TextStyle(
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.blackColor,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.5.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.primaryColor,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.8),
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'الغاء من الزبون',
                              style: TextStyle(
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.blackColor,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.5.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.redColor,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.8),
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'عطل في العجلة',
                              style: TextStyle(
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.blackColor,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.5.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.primaryColor,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.8),
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'تأخير الطلب',
                              style: TextStyle(
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.blackColor,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 2.5.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.primaryColor,
                              border: Border.all(
                                color: Colors.black.withOpacity(0.8),
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'طلب تالف',
                              style: TextStyle(
                                shadows: [
                                  BoxShadow(
                                    color: AppColors.blackColor,
                                    offset: Offset(1, 1),
                                    spreadRadius: 1,
                                    blurRadius: 1,
                                  ),
                                ],
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'اكتب غير ذالك',
                                  style: TextStyle(
                                    color: AppColors.blackColor,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13.sp,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height / 12,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.blackColor,
                                  width: 1.sp,
                                ),
                                color: const Color(0xFFD8D8D8),
                              ),
                              child: TextFormField(
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 1,
                                      color: AppColors.blackColor,
                                    ),
                                  ),
                                  hintText: 'اكتب سبب للالغاء',
                                  hintStyle: TextStyle(
                                    color: const Color(0xFFB0B0B0),
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 4.5.h),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.primaryColor,
                                onPrimary: AppColors.blackColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.sp),
                                ),
                              ),
                              child: Text(
                                "تم",
                                style: TextStyle(
                                  shadows: [
                                    BoxShadow(
                                      color: AppColors.blackColor,
                                      blurRadius: 10,
                                      spreadRadius: 10,
                                      offset: Offset(1, 0.2),
                                    ),
                                  ],
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
