import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  @override
  void initState() {
    navigationToHome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(AppAssets.onBoarding),
            Text(
              'اهلا بك كابتن',
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),Text(
              'Omar Abdelaziz',
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void navigationToHome() {
    Future.delayed(
      const Duration(seconds: 3),
          () {
        Navigator.pushReplacementNamed(context, 'layout-screen');
      },
    );
  }
}
