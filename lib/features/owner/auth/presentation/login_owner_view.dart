import 'package:beep_beep/features/auth/presentation/widgets/login_view_body.dart';
import 'package:beep_beep/features/owner/auth/presentation/widgets/login_owner_view_body.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginOwnerView extends StatelessWidget {
  const LoginOwnerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: LoginOwnerViewBody(),
    );
  }
}