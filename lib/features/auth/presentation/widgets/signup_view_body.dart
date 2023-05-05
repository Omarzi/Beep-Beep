import 'package:beep_beep/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../../../utils/constants/app_assets.dart';

class SignUpViewBody extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> signupKey = GlobalKey<FormState>();

  SignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: signupKey,
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
                Image.asset(AppAssets.stackInLogin2),
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
                        CustomTextFormField(
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
                                controller: passwordController,
                                isObscure: true,
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
                                controller: passwordController,
                                isObscure: true,
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
                                hintText: 'اسم مدير المحل',
                                textInputType: TextInputType.visiblePassword,
                                controller: passwordController,
                                isObscure: true,
                              ),
                            ),
                            SizedBox(width: 10.w),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.32,
                              height: MediaQuery.of(context).size.height / 18,
                              child: CustomTextFormField(
                                validator: (p0) {},
                                hintText: 'رقم هاتف المحل',
                                textInputType: TextInputType.visiblePassword,
                                controller: passwordController,
                                isObscure: true,
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
                                hintText: 'نوع المحل',
                                textInputType: TextInputType.visiblePassword,
                                controller: passwordController,
                                isObscure: true,
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
                                controller: passwordController,
                                isObscure: true,
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
                            if (signupKey.currentState!.validate()) {
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
    );
  }
}
