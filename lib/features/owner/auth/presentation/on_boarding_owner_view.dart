import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OnBoardingOwnerView extends StatefulWidget {
  const OnBoardingOwnerView({Key? key}) : super(key: key);

  @override
  State<OnBoardingOwnerView> createState() => _OnBoardingOwnerViewState();
}

class _OnBoardingOwnerViewState extends State<OnBoardingOwnerView> {

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
            Image.asset(AppAssets.beep1Beef),
            Text(
              'توصيلنا اسرع من البيب بيب',
              style: TextStyle(
                color: AppColors.blackColor,
                fontSize: 22.sp,
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
        Navigator.pushReplacementNamed(context, 'layout-owner-screen');
      },
    );
  }
}
