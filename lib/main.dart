import 'package:beep_beep/app/my_app.dart';
import 'package:beep_beep/bloc_observer/bloc_observer.dart';
import 'package:beep_beep/features/auth/data/data_provider/local/my_auth_cache.dart';
import 'package:beep_beep/features/auth/data/data_provider/local/my_config_cache.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  Bloc.observer = MyBlocObserver();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
    statusBarColor: AppColors.primaryColor,
    statusBarBrightness: Brightness.dark,
  ));
  await MyConfigCach.init();
  await MyAuthCache.init();
  runApp(const MyApp());
}
