import 'package:practice_for_ca_and_state_management/data/dataSources/auth_remote_data_source.dart';
import 'package:practice_for_ca_and_state_management/data/models/login_model.dart';
import 'package:practice_for_ca_and_state_management/data/models/otp.dart';
import 'package:practice_for_ca_and_state_management/data/models/pass_model.dart';
import 'package:practice_for_ca_and_state_management/data/models/user_model.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/forgot_password.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/otp.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/user_login.dart';
import 'package:practice_for_ca_and_state_management/domain/repositories/auth_repositories.dart';

import '../../domain/entities/password.dart';
import '../../domain/entities/user.dart';

class authRepoImpl implements authRepository {

  final dataSource source;

  authRepoImpl({ required this.source});

  @override
  Future<void> signUp(User user) async {

    final userModel = UserModels(
      firstName: user.firstName, 
      lastName: user.lastName, 
      age: user.age, 
      country: user.country, 
      city: user.city, 
      state: user.state, 
      postalCode: user.postalCode, 
      email: user.email, 
      phNum: user.phNum);

      await source.signUp(userModel);

  }

  Future<void> password(cPassword createPassword) async {

    final passModel = passModels(
      password : createPassword.password,
      confirmPassword : createPassword.confirmPassword
    );

    await source.cpassword(passModel);
  }

  Future<void> Otp(verifyOtp otp) async {
    final otpModels = otpModel(otp: otp.otp);
    await source.verifyOtps(otpModels);
  }

  Future<void> userlogin(userLogin login) async {
    
    final loginModels = loginModel(
      email: login.email, 
      password: login.password);

      await source.userLogin(loginModels);

  }

  Future<void> forgotPassword(fPassword chPassword) async {

    final fPasswordModels = fPasswordModel(email: chPassword.email);

    await source.fPassword(fPasswordModels);
  }

  Future<void> changePassword(cPassword createPassword) async {

    final passModel = passModels(
      password : createPassword.password,
      confirmPassword : createPassword.confirmPassword
    );

    await source.cpassword(passModel);
  }
}