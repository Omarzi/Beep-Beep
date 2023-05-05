import 'package:beep_beep/features/layout/presentation/views/sub_pages/widgets/custom_appbar.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomAppBar(),
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
                    'سجل حساباتي',
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
                    'حضور وانصراف',
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
                    'حذف الحساب',
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
                    'تسجيل خروج من الحساب',
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
    );
  }
}
