import 'package:beep_beep/features/auth/data/data_provider/remote/dio_helper.dart';
import 'package:beep_beep/utils/constants/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'attendance_state.dart';

class AttendanceCubit extends Cubit<AttendanceState> {
  AttendanceCubit() : super(AttendanceInitialState());

  static AttendanceCubit get (context) => BlocProvider.of(context);

  DioHelper dioHelper = DioHelper();

  Future<void> attendance(double? lat, double? long) async {
    emit(AttendanceLoadingState());
    await dioHelper.postData(endPoint: AppConstants.attendance, body: {
      "lat": lat,
      "long": long,
    }).then((value) {
      print('Success in Post Location');
      emit(AttendanceSuccessState());
    }).catchError((error) {
      print('error in post location is $error');
      emit(AttendanceErrorState());
    });
  }

  Future<void> checkout(double? lat, double? long) async {
    emit(AttendanceLoadingState());
    await dioHelper.postData(endPoint: AppConstants.checkout, body: {
      "lat": lat,
      "long": long,
    }).then((value) {
      print('Success in Post Location');
      emit(AttendanceSuccessState());
    }).catchError((error) {
      print('error in post location is $error');
      emit(AttendanceErrorState());
    });
  }

  Future<void> addLocationCaptain(double? lat, double? long) async {
    emit(AddLocationLoadingState());
    await dioHelper.postData(endPoint: AppConstants.addLocation, body: {
      "lat": lat,
      "long": long,
    }).then((value) {
      print('Success in Post Location');
      emit(AddLocationSuccessState());
    }).catchError((error) {
      print('error in post location is $error');
      emit(AddLocationErrorState());
    });
  }
}
