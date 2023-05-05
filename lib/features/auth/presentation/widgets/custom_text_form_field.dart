import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType textInputType;
  String hintText;
  bool isObscure = false;

  CustomTextFormField({
    Key? key,
    required this.validator,
    required this.hintText,
    required this.textInputType,
    required this.controller,
    required this.isObscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      shadowColor: AppColors.blackColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.75,
        child: TextFormField(
          cursorColor: AppColors.primaryColor,
          controller: controller,
          validator: validator,
          keyboardType: textInputType,
          obscureText: isObscure == true ? true : false,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Inter-ExtraLight',
              color: AppColors.greyColor,
              fontWeight: FontWeight.w400,
              fontSize: 16.sp,
            ),
            contentPadding: EdgeInsets.symmetric(vertical: 0.8.h),
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
    );
  }
}
