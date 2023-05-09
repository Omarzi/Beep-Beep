import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CheckView extends StatelessWidget {
  const CheckView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppAssets.beep1Beef),
            Stack(
              children: [
                Image.asset(AppAssets.stackInLogin),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 12.h),
                    child: Column(
                      children: [
                        Text(
                          'يرجي اختيار هل انت عميل ام كابتن ؟',
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'login-screen');
                            },
                            child: Text(
                              'كابتن',
                              style: TextStyle(
                                fontSize: 24.sp,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.grey[200],
                              minimumSize: const Size.fromHeight(50), // NEW
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, 'login-owner-screen');
                            },
                            child: Text(
                              'عميل',
                              style: TextStyle(
                                fontSize: 24.sp,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
