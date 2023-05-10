part of 'attendance_cubit.dart';

@immutable
abstract class AttendanceState {}

class AttendanceInitialState extends AttendanceState {}

class AttendanceLoadingState extends AttendanceState {}

class AttendanceSuccessState extends AttendanceState {}

class AttendanceErrorState extends AttendanceState {}

/// CheckOut

class CheckOutLoadingState extends AttendanceState {}

class CheckOutSuccessState extends AttendanceState {}

class CheckOutErrorState extends AttendanceState {}

/// Add Location In Captain

class AddLocationLoadingState extends AttendanceState {}

class AddLocationSuccessState extends AttendanceState {}

class AddLocationErrorState extends AttendanceState {}