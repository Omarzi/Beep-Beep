import 'package:beep_beep/features/auth/data/data_provider/local/my_config_cache.dart';
import 'package:beep_beep/features/auth/data/data_provider/local/my_config_cache_keys.dart';
import 'package:beep_beep/features/auth/data/data_provider/remote/dio_helper.dart';
import 'package:beep_beep/utils/constants/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);

  DioHelper dioHelper = DioHelper();

  Future<void> login(String phone, String password) async {
    emit(LoginLoadingState());
    await dioHelper.postData(endPoint: AppConstants.login, body: {
      'phone': phone,
      'password': password,
    }).then((value) {
      print(value.data);
      MyConfigCach.putString(
          key: MyConfigCacheKeys.token, value: value.data['token']);
      print('Token is ${MyConfigCach.getString(key: MyConfigCacheKeys.token)}');
      emit(LoginSuccessState());
    }).catchError((error) {
      print('Error in Login = $error');
      emit(LoginErrorState());
    });
  }
}
