import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static const baseSVGImage = 'assets/images/svg';
  static const basePNGImage = 'assets/images/png';


  /// Methods
  static Widget showLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(color: AppColors.primaryColor),
    );
  }
}