import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';

class AppConstants {
  static const baseSVGImage = 'assets/images/svg';
  static const basePNGImage = 'assets/images/png';
  static const baseUrl = 'https://beep-beep-production.up.railway.app/';

  /// End Points
  static const login = 'auth/login';
  static const addLocation = 'user/captin_location';
  static const attendance = 'user/attendance';
  static const checkout = 'user/attendance/checkout';

  /// Methods
  static Widget showLoadingIndicator() {
    return Center(
      child: CircularProgressIndicator(color: AppColors.primaryColor),
    );
  }
}