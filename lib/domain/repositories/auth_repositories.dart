import 'package:practice_for_ca_and_state_management/domain/entities/forgot_password.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/password.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/user.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/user_login.dart';

import '../entities/otp.dart';




abstract class authRepository {

Future<void> signUp(User user);
Future<void> password(cPassword createPassword);
Future<void> Otp(verifyOtp otp);
Future<void> userlogin(userLogin login);
Future<void> forgotPassword(fPassword chPassword);

}