import 'package:beep_beep/features/auth/managers/signup_cubit.dart';
import 'package:beep_beep/features/auth/presentation/widgets/custom_text_form_field.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import '../../../../utils/constants/app_assets.dart';

class SignUpViewBody extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController nearlyAddressController = TextEditingController();
  TextEditingController typeOfMotosyclController = TextEditingController();
  TextEditingController captinNumberController = TextEditingController();
  TextEditingController numberOfMotosyclController = TextEditingController();
  TextEditingController imageOfIDController = TextEditingController();
  TextEditingController imageForMeController = TextEditingController();

  final GlobalKey<FormState> signupKey = GlobalKey<FormState>();

  SignUpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccessState) {
          Navigator.pushNamed(context, 'on-boarding-screen');
        } else if (state is SignupErrorState) {
          SnackBar snackBar = const SnackBar(content: Text('عنلية انشاء حساب مرفوض'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
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
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.32,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {},
                                    hintText: 'المحافظة',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: countryController,
                                    isObscure: false,
                                  ),
                                ),
                                Container(
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.32,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {
                                      if (p0!.isEmpty) {
                                        return 'برجاء ادخال الباسورد';
                                      } else if (p0.length < 3) {
                                        return ' برجاء كتابة باسورد اكثر من 6 حروف';
                                      }
                                    },
                                    hintText: 'الباسورد',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: passwordController,
                                    isObscure: true,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.2.h),
                            Text(
                              'معلومات كابتن التوصيل',
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
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.32,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {},
                                    hintText: 'العمر',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: ageController,
                                    isObscure: false,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.32,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {},
                                    hintText: 'الاسم الثلاثي',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: nameController,
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
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.32,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {},
                                    hintText: 'اقرب نقطة دالة',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: nearlyAddressController,
                                    isObscure: false,
                                  ),
                                ),
                                SizedBox(width: 10.w),
                                Container(
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.32,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {},
                                    hintText: 'عنوان السكن',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: addressController,
                                    isObscure: false,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 1.2.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.18,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {},
                                    hintText: 'رقمها',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: numberOfMotosyclController,
                                    isObscure: false,
                                  ),
                                ),
                                Container(
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.25,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {},
                                    hintText: 'نوع الدراجة',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: typeOfMotosyclController,
                                    isObscure: false,
                                  ),
                                ),
                                // SizedBox(width: 10.w),
                                Container(
                                  width:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .width * 0.32,
                                  height:
                                  MediaQuery
                                      .of(context)
                                      .size
                                      .height / 18,
                                  child: CustomTextFormField(
                                    validator: (p0) {},
                                    hintText: 'رقم الهاتف',
                                    textInputType:
                                    TextInputType.visiblePassword,
                                    controller: phoneController,
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
                            if(state is SignupLoadingState)
                              CircularProgressIndicator(color: AppColors.primaryColor),
                            if(state is !SignupLoadingState)
                            ElevatedButton(
                              onPressed: () {
                                if (signupKey.currentState!.validate()) {
                                  BlocProvider.of<SignupCubit>(context).signup(
                                    emailController.text,
                                    phoneController.text,
                                    passwordController.text,
                                    countryController.text,
                                    nameController.text,
                                    int.parse(ageController.text),
                                    addressController.text,
                                    nearlyAddressController.text,
                                    captinNumberController.text,
                                    typeOfMotosyclController.text,
                                    phoneController.text,);
                                  // Navigator.pushNamed(context, 'login-screen');
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
      },
    );
  }
}
