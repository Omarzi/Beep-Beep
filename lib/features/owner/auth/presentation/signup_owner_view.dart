import 'package:beep_beep/features/owner/auth/presentation/widgets/sign_up_owner_view_body.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class SignUpOwnerView extends StatelessWidget {
  const SignUpOwnerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SignUpOwnerViewBody(),
    );
  }
}
