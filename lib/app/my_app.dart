import 'package:beep_beep/config/app_routes.dart';
import 'package:beep_beep/features/auth/managers/login_cubit.dart';
import 'package:beep_beep/features/auth/managers/signup_cubit.dart';
import 'package:beep_beep/features/layout/managers/attendance_cubit.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Position? position;
  bool? isLoaded;

  Future<void> _getCurrentLocation() async {
    await Geolocator.requestPermission();
    Geolocator.getCurrentPosition().then((value) async {
      position = value;
      isLoaded = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => LoginCubit(),
          ),
          BlocProvider(
            create: (context) => SignupCubit(),
          ),
          BlocProvider(
            create: (context) => AttendanceCubit(),
          ),
        ],
        child: MaterialApp(
          // builder: DevicePreview.appBuilder,
          theme: ThemeData(fontFamily: 'Inter-ExtraLight'
              // textTheme: GoogleFonts.adventProTextTheme(),
              ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          // initialRoute: 'attendance-screen',
          initialRoute: 'splash-screen',
        ),
      );
    });
  }
}
