import 'package:beep_beep/features/auth/data/data_provider/local/my_config_cache.dart';
import 'package:beep_beep/features/auth/data/data_provider/local/my_config_cache_keys.dart';
import 'package:beep_beep/features/layout/managers/attendance_cubit.dart';
import 'package:beep_beep/features/layout/presentation/views/sub_pages/widgets/custom_appbar.dart';
import 'package:beep_beep/utils/constants/app_assets.dart';
import 'package:beep_beep/utils/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sizer/sizer.dart';

class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  Position? position;
  bool? isLoaded;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    await Geolocator.requestPermission();
    Geolocator.getCurrentPosition().then((value) async {
      setState(() {
        position = value;
        isLoaded = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AttendanceCubit, AttendanceState>(
      listener: (context, state) {
        if (state is AttendanceErrorState) {
          SnackBar snackBar =
              const SnackBar(content: Text('لقد تم تسجيل الحضور بنجاح'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        } else if (state is AttendanceErrorState) {
          SnackBar snackBar =
              const SnackBar(content: Text('لقد فشلت عملية تسجيل الحضور'));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const CustomAppBar(),
                  Container(
                    padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 2.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(AppAssets.notification),
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_forward,
                            color: AppColors.blackColor,
                            size: 22.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Image.asset(AppAssets.att),
                  // if (isLoaded ?? false) const CircularProgressIndicator(),
                  // Text(
                  //   'Latitude: ${position?.latitude}' ?? 'None',
                  // ),
                  // Text(
                  //   'Longitude: ${position?.longitude}' ?? 'None',
                  // ),
                  SizedBox(height: 2.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AttendanceCubit>(context).checkout(
                              position?.latitude, position?.longitude);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          onPrimary: AppColors.blackColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.sp),
                          ),
                        ),
                        child: Text(
                                "تسجيل الانصراف",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15.sp,
                                ),
                              ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<AttendanceCubit>(context).attendance(
                              position?.latitude, position?.longitude);
                        },
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.green2Color,
                          onPrimary: AppColors.blackColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.sp),
                          ),
                        ),
                        child: Text(
                          "تسجيل الحضور",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
