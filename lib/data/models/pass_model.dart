import 'package:practice_for_ca_and_state_management/domain/entities/password.dart';

import '../../domain/entities/change_password.dart';

class passModels extends cPassword {

  passModels ({
    required String password,
    required String confirmPassword,
  }) :super(password: password, confirmPassword: confirmPassword);

  Map<String, dynamic> toJson () {

    return {
      'password' : password,
      'confirmPassword' : confirmPassword
    };
  }

  factory passModels.fromJson (Map<String, dynamic> json){

    return passModels(
      password: json['password'], 
      confirmPassword: json['confirmPassword'],
      );

  }
}

class changePassModels extends changePassword {

  changePassModels ({
    required String password,
    required String rebeatPassword,
  }) : super(password: password, rebeatPassword: rebeatPassword);

  Map<String, dynamic> toJson () {

    return {
      'password' : password,
      'rebeatPassword' : rebeatPassword
    };
  }

  factory changePassModels.fromJson (Map<String, dynamic> json){

    return changePassModels(
      password: json['password'], 
      rebeatPassword : json['rebeatPassword']);

  }
}