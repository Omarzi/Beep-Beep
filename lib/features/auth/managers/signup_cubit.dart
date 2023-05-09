import 'package:beep_beep/features/auth/data/data_provider/remote/dio_helper.dart';
import 'package:beep_beep/utils/constants/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit() : super(SignupInitialState());

  static SignupCubit get(context) => BlocProvider.of(context);

  DioHelper dioHelper = DioHelper();

  Future<void> signup(String email, String phone,
      String password, String governorate, String captin_fullname,
      int captin_age, String captin_home_address,
      String captin_nearest_point, String captin_home_phone,
      String captin_bike_type, String captin_bike_numbers,) async {
    emit(SignupLoadingState());
    dioHelper.postData(endPoint: '$AppConstants/auth/singup/?type=captin', body: {
      'email': email,
      'phone': phone,
      'password': password,
      'governorate': governorate,
      'captin_fullname': captin_fullname,
      'captin_age': captin_age,
      'captin_home_address': captin_home_address,
      'captin_nearest_point': captin_nearest_point,
      'captin_home_phone': captin_home_phone,
      'captin_bike_type': captin_bike_type,
      'captin_bike_numbers': captin_bike_numbers,
    }).then((value) {
      print(value.data);
      emit(SignupSuccessState());
    }).catchError((error) {
      print(error);
      emit(SignupErrorState());
    });
  }
}
