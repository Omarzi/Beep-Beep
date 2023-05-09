import 'package:beep_beep/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginOwnerViewBody extends StatelessWidget {
  final GlobalKey<FormState> loginOwnerKey = GlobalKey<FormState>();

  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  LoginOwnerViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: loginOwnerKey,
      child: SingleChildScrollView(
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
                          'يرجي كتابة بريدك الالكتروني او رقم هاتفك لتسجيل الدخول',
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: CustomTextFormField(
                            validator: (p0) {
                              if(p0!.isEmpty) {
                                return 'برجاء ادخال الهاتف';
                              } else if(p0.length < 3) {
                                return ' برجاء كتابة الهاتف اقل من او يساوي 11 حروف';
                              }
                            },
                            hintText: 'رقم الهاتف',
                            textInputType: TextInputType.phone,
                            controller: phoneController,
                            isObscure: false,
                          ),
                        ),
                        SizedBox(height: 1.5.h),
                        Directionality(
                          textDirection: TextDirection.rtl,
                          child: CustomTextFormField(
                            validator: (p0) {
                              if(p0!.isEmpty) {
                                return 'برجاء ادخال الباسورد';
                              } else if(p0.length < 3) {
                                return ' برجاء كتابة باسورد اكثر من 11 حروف';
                              }
                            },
                            hintText: 'الباسورد',
                            textInputType: TextInputType.visiblePassword,
                            controller: passwordController,
                            isObscure: true,
                          ),
                        ),
                        SizedBox(height: 2.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(context, 'signup-owner-screen');
                              },
                              child: Text(
                                'إنشاء الان ',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: AppColors.blueColor,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'ليس لديك حساب.؟ ',
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 4.5.h),
                        ElevatedButton(
                          onPressed: () {
                            if(loginOwnerKey.currentState!.validate()) {
                              Navigator.pushNamed(context, 'on-boarding-owner-screen');
                              // Navigator.pushNamed(context, 'layout-screen');
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
                            "دخول",
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
    );
  }
}
