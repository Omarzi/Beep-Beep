import 'package:beep_beep/features/auth/presentation/widgets/signup_view_body.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SignUpViewBody(),
    );
  }
}
