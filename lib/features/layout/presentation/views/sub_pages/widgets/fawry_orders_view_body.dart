import 'package:beep_beep/features/layout/presentation/views/sub_pages/widgets/custom_appbar.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FawryOrdersViewBody extends StatelessWidget {
  const FawryOrdersViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(),
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
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
                  onTap: (){
                    Navigator.pushNamed(context, 'fawry-orders');
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: 2.w, vertical: 0.4.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: AppColors.primaryColor,
                      border: Border.all(
                        color: AppColors.blackColor,
                        width: 1.sp,
                      ),
                    ),
                    child: Text(
                      'الطلبات الفورية',
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            /// Cards
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
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
                          'حالة الطلب',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          'رقم الوصل : 000000',
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
                          'رقم الهاتف',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'العنوان',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          "المحافظة",
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'السعر الاجمالي',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'العدد',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'نوع المنتج',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'الملاحظات',
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
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.redColor,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'رفض',
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
                              horizontal: 8.w, vertical: 0.4.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.sp),
                            color: AppColors.greenColor,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.sp,
                            ),
                          ),
                          child: Text(
                            'قبول',
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
                height: MediaQuery.of(context).size.height / 4,
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
                          'حالة الطلب',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          'رقم الوصل : 000000',
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
                          'رقم الهاتف',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'العنوان',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          "المحافظة",
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'السعر الاجمالي',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'العدد',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'نوع المنتج',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'الملاحظات',
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
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.redColor,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'رفض',
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
                              horizontal: 8.w, vertical: 0.4.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.sp),
                            color: AppColors.greenColor,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.sp,
                            ),
                          ),
                          child: Text(
                            'قبول',
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
                height: MediaQuery.of(context).size.height / 4,
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
                          'حالة الطلب',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w800,
                            fontSize: 15.sp,
                          ),
                        ),
                        Text(
                          'رقم الوصل : 000000',
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
                          'رقم الهاتف',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'العنوان',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          "المحافظة",
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'السعر الاجمالي',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'العدد',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                        Text(
                          'نوع المنتج',
                          style: TextStyle(
                            color: AppColors.blackColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 13.5.sp,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'الملاحظات',
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
                          onTap: (){},
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 8.w, vertical: 0.4.h),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20.sp),
                              color: AppColors.redColor,
                              border: Border.all(
                                color: Colors.white,
                                width: 1.sp,
                              ),
                            ),
                            child: Text(
                              'رفض',
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
                              horizontal: 8.w, vertical: 0.4.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.sp),
                            color: AppColors.greenColor,
                            border: Border.all(
                              color: Colors.white,
                              width: 1.sp,
                            ),
                          ),
                          child: Text(
                            'قبول',
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
    );
  }
}
