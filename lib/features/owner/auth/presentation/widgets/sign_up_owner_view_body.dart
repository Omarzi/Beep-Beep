import 'package:beep_beep/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpOwnerViewBody extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController nameOfShopController = TextEditingController();
  TextEditingController typeOfShopController = TextEditingController();
  TextEditingController phoneOfShopController = TextEditingController();
  TextEditingController nameOfManagerOfShopController = TextEditingController();
  TextEditingController saveInMapController = TextEditingController();
  TextEditingController addressOfShopController = TextEditingController();

  final GlobalKey<FormState> signupOwnerKey = GlobalKey<FormState>();

  SignUpOwnerViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Form(
        key: signupOwnerKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  AppAssets.beep1Beef,
                  height: 22.h,
                ),
              ),
              Stack(
                children: [
                  Image.asset(AppAssets.stackInLogin2, height: 72.h),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: 6.h),
                      child: Column(
                        children: [
                          Text(
                            'معلومات انشاء حساب جديد',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            ),
                          ),
                          SizedBox(height: 1.2.h),
                          CustomTextFormField(
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return 'يرجي ادخال الاايميل';
                              } else if (!RegExp(
                                      "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9+_.-]+.[com]")
                                  .hasMatch(p0)) {
                                return 'يرجي ادخال الايميل مثل example@gmail.com';
                              }
                            },
                            hintText: 'الايميل',
                            textInputType: TextInputType.emailAddress,
                            controller: emailController,
                            isObscure: false,
                          ),
                          SizedBox(height: 1.2.h),
                          CustomTextFormField(
                            validator: (p0) {
                              if (p0!.isEmpty) {
                                return 'برجاء ادخال الهاتف';
                              } else if (p0.length < 3) {
                                return ' برجاء كتابة الهاتف اقل من 11 حروف';
                              }
                            },
                            hintText: 'رقم الهاتف',
                            textInputType: TextInputType.phone,
                            controller: phoneController,
                            isObscure: false,
                          ),
                          SizedBox(height: 1.2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: MediaQuery.of(context).size.height / 18,
                                child: CustomTextFormField(
                                  validator: (p0) {},
                                  hintText: 'المحافظة',
                                  textInputType: TextInputType.visiblePassword,
                                  controller: countryController,
                                  isObscure: false,
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: MediaQuery.of(context).size.height / 18,
                                child: CustomTextFormField(
                                  validator: (p0) {
                                    if (p0!.isEmpty) {
                                      return 'برجاء ادخال الباسورد';
                                    } else if (p0.length < 3) {
                                      return ' برجاء كتابة باسورد اكثر من 6 حروف';
                                    }
                                  },
                                  hintText: 'الباسورد',
                                  textInputType: TextInputType.visiblePassword,
                                  controller: passwordController,
                                  isObscure: true,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.2.h),
                          Text(
                            'معلومات العمل التجاري',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15.sp,
                            ),
                          ),
                          SizedBox(height: 1.2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: MediaQuery.of(context).size.height / 18,
                                child: CustomTextFormField(
                                  validator: (p0) {},
                                  hintText: 'نوع المحل',
                                  textInputType: TextInputType.visiblePassword,
                                  controller: typeOfShopController,
                                  isObscure: false,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: MediaQuery.of(context).size.height / 18,
                                child: CustomTextFormField(
                                  validator: (p0) {},
                                  hintText: 'اسم المحل',
                                  textInputType: TextInputType.visiblePassword,
                                  controller: nameOfShopController,
                                  isObscure: false,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: MediaQuery.of(context).size.height / 18,
                                child: CustomTextFormField(
                                  validator: (p0) {},
                                  hintText: 'رقم هاتف المحل',
                                  textInputType: TextInputType.visiblePassword,
                                  controller: phoneOfShopController,
                                  isObscure: false,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: MediaQuery.of(context).size.height / 18,
                                child: CustomTextFormField(
                                  validator: (p0) {},
                                  hintText: 'اسم المدير',
                                  textInputType: TextInputType.visiblePassword,
                                  controller: nameOfManagerOfShopController,
                                  isObscure: false,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 1.2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: MediaQuery.of(context).size.height / 18,
                                child: CustomTextFormField(
                                  validator: (p0) {},
                                  hintText: 'التثبيت علي الخريطة',
                                  textInputType: TextInputType.visiblePassword,
                                  controller: saveInMapController,
                                  isObscure: false,
                                ),
                              ),
                              SizedBox(width: 10.w),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.32,
                                height: MediaQuery.of(context).size.height / 18,
                                child: CustomTextFormField(
                                  validator: (p0) {},
                                  hintText: 'عنوان المحل',
                                  textInputType: TextInputType.visiblePassword,
                                  controller: addressOfShopController,
                                  isObscure: false,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 2.5.w),
                          Text(
                            'يرجي الضغط لقراة الشروط المهمة قبل التسجيل',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColors.blueColor,
                            ),
                          ),
                          // SizedBox(height: 5.w),
                          ElevatedButton(
                            onPressed: () {
                              if (signupOwnerKey.currentState!.validate()) {
                                Navigator.pushNamed(context, 'login-screen');
                              }
                            },
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
