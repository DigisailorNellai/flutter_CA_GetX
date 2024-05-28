import 'package:practice_for_ca_and_state_management/domain/entities/otp.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/user.dart';
import 'package:practice_for_ca_and_state_management/domain/repositories/auth_repositories.dart';

import '../entities/password.dart';

class signUpUsecase {

final authRepository repository;

signUpUsecase ({required this.repository});

Future<void> call(User user) async {
  
return await repository.signUp(user);

}

}

class passwordUsecases {

  final authRepository repository;

  passwordUsecases ({required this.repository});

  Future<void> call(cPassword createPassword) async {
    return await repository.password(createPassword);
  }

}

class otpUseCase {

  final authRepository repository;

  otpUseCase ({required this.repository});

  Future<void> call(verifyOtp otp) async {
    return await repository.Otp(otp);
  }
}