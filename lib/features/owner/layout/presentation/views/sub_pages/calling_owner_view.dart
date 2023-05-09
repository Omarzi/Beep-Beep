import 'package:beep_beep/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CallingOwnerView extends StatelessWidget {
  const CallingOwnerView({Key? key}) : super(key: key);

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
                            Navigator.pop(context);
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: AppColors.blackColor,
                            size: 20.sp,
                          )),
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
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.notification),
                    Image.asset(AppAssets.settings),
                  ],
                ),
              ),
              Image.asset(AppAssets.calling),
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
              SizedBox(height: 2.h),
              Text(
                'اكتب رسالة لأدارة التطبيق للرد عليك والاتصال بك في وقت لاحق ',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: AppColors.blackColor,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 2.h),
              Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  cursorColor: AppColors.primaryColor,
                  // controller: controller,
                  // validator: validator,
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height / 14),
                    hintText: 'اكتب رسالة للادارة',
                    hintStyle: TextStyle(
                      fontFamily: 'Inter-ExtraLight',
                      color: AppColors.greyPlayedColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                    // contentPadding: EdgeInsets.symmetric(vertical: 0.8.h),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.sp),
                      borderSide: BorderSide(
                        color: AppColors.primaryColor,
                        width: 1,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.sp),
                      borderSide: BorderSide(
                        color: AppColors.blackColor,
                        width: 1,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 2.h),
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
                  "ارسال",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.sp,
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
