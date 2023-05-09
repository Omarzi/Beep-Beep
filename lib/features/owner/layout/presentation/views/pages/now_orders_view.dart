import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NowOrdersView extends StatelessWidget {
  const NowOrdersView({Key? key}) : super(key: key);

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
                          Navigator.pushNamed(context, 'calling-owner-screen');
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
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'notifications2-screen');
                        },
                        child: Image.asset(AppAssets.notification)),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.height / 18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.sp),
                        color: Colors.white,
                        border: Border.all(
                          color: AppColors.blackColor,
                          width: 0.2.w,
                        ),
                      ),
                      child: TextFormField(
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.text,
                        cursorColor: AppColors.primaryColor,
                        decoration: InputDecoration(
                          hintText: 'ادخل رقم العملية او هاتف الزبون للبحث',
                          hintStyle: TextStyle(
                            fontSize: 11.4.sp
                          ),
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                            color: AppColors.greyPlayedColor,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'settings-owner-screen');
                        },
                        child: Image.asset(AppAssets.settings)),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.w, vertical: 0.4.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.sp),
                        color: Colors.white,
                        border: Border.all(
                          color: AppColors.primaryColor,
                          width: 1.sp,
                        ),
                      ),
                      child: Text(
                        'طلبات خلال 24 ساعة',
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'fawry-orders-screen');
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 2.w, vertical: 0.4.h),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.sp),
                        color: AppColors.primaryColor,
                        border: Border.all(
                          color: Colors.black,
                          width: 1.sp,
                        ),
                      ),
                      child: Text(
                        'الطلبات الفورية',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(AppAssets.pic),
              Text(
                'لا توجد طلبات حالياً',
                style: TextStyle(
                  color: AppColors.greyPlayed2Color,
                  fontSize: 16.8.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
          padding: EdgeInsets.all(8.sp),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: AppColors.primaryColor,
              width: 1.w,
            ),
            borderRadius: BorderRadius.circular(50.sp),
          ),
          child: Image.asset(AppAssets.delivery)),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
