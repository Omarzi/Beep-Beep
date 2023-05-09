import 'package:beep_beep/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FawryOwnerOrdersView extends StatelessWidget {

  TextEditingController addressController = TextEditingController();
  TextEditingController nearlyPointController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  FawryOwnerOrdersView({Key? key}) : super(key: key);

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
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(AppAssets.notification),
                    Image.asset(AppAssets.settings),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
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
                        'طلبات خلال 24 ساعة',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.4.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.sp),
                      color: Colors.white,
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 1.sp,
                      ),
                    ),
                    child: Text(
                      'الطلبات الفورية',
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 11.sp,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              CustomTextFormField(
                validator: (p0) {},
                hintText: 'عنوان المستلم (اختياري)',
                textInputType: TextInputType.text,
                controller: addressController,
                isObscure: false,
              ),
              SizedBox(height: 4.h),
              CustomTextFormField(
                validator: (p0) {},
                hintText: 'اقرب نقطة دالة (اختياري)',
                textInputType: TextInputType.text,
                controller: addressController,
                isObscure: false,
              ),
              SizedBox(height: 4.h),
              CustomTextFormField(
                validator: (p0) {},
                hintText: 'رقم هاتف المستلم ( اختياري )',
                textInputType: TextInputType.text,
                controller: addressController,
                isObscure: false,
              ),
              SizedBox(height: 4.h),
              CustomTextFormField(
                validator: (p0) {},
                hintText: 'كلفة التوصيل (اجباري)',
                textInputType: TextInputType.text,
                controller: addressController,
                isObscure: false,
              ),
              SizedBox(height: 4.h),
              CustomTextFormField(
                validator: (p0) {},
                hintText: 'الملاحظات',
                textInputType: TextInputType.text,
                controller: addressController,
                isObscure: false,
              ),
              SizedBox(height: 4.h),
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
                  "تسجيل",
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
