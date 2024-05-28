import 'package:practice_for_ca_and_state_management/domain/entities/password.dart';

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
      confirmPassword: json['confirmPassword']);

  }
}

class changePassModels extends cPassword {

  changePassModels ({
    required String password,
    required String rebeatPassword,
  }) :super(password: password, confirmPassword: rebeatPassword);

  Map<String, dynamic> toJson () {

    return {
      'password' : password,
      'rebeatPassword' : confirmPassword
    };
  }

  factory changePassModels.fromJson (Map<String, dynamic> json){

    return changePassModels(
      password: json['password'], 
      rebeatPassword : json['confirmPassword']);

  }
}