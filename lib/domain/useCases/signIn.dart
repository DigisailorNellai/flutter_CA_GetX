import 'package:practice_for_ca_and_state_management/domain/entities/forgot_password.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/user_login.dart';
import 'package:practice_for_ca_and_state_management/domain/repositories/auth_repositories.dart';

import '../entities/change_password.dart';

class loginUsecase {

  final authRepository repository;
  loginUsecase({ required this.repository});

  Future<void> call(userLogin login) async {
    await repository.userlogin(login);
  }
}

class fPasswordUsecase {

  final authRepository repository;
  fPasswordUsecase({required this.repository});

  Future<void> call(fPassword chPassword) async {
    await repository.forgotPassword(chPassword);
  }
}

class changePasswordUsecase {

  final authRepository repository;
  changePasswordUsecase({required this.repository});

  Future<void> call(changePassword newpassword) async {
    await repository.newPassword(newpassword);
  }
}