import 'package:beep_beep/config/app_routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation,deviceType) {
        return MaterialApp(
          builder: DevicePreview.appBuilder,
          theme: ThemeData(
            fontFamily: 'Inter-ExtraLight'
            // textTheme: GoogleFonts.adventProTextTheme(),
          ),
          debugShowCheckedModeBanner: false,
          onGenerateRoute: RouteGenerator.getRoute,
          initialRoute: 'splash-screen',
        );
      }
    );
  }
}