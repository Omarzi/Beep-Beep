import 'package:beep_beep/app/my_app.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColor,
    statusBarBrightness: Brightness.dark,
  ));
  runApp(const MyApp());
}
