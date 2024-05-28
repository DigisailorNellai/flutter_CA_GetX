import 'package:practice_for_ca_and_state_management/domain/entities/forgot_password.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/user_login.dart';

class loginModel extends userLogin {

  loginModel ({

    required String email,
    required String password
  }) : super(email: email, password: password);

  Map<String, dynamic> toJson() {

    return {
        'email' : email,
        'password' : password
    };
  }

  factory loginModel.fromJson(Map<String, dynamic> json)  {

     return loginModel(
      email: json ['email'], 
      password: json ['password']); 

    
  }
}

class fPasswordModel extends fPassword {

  fPasswordModel({required String email}) :super(email: email);

  Map<String, dynamic> toJson() {
    return {
        'email' : email
    };
    
  }

  factory fPasswordModel.fromJson (Map<String, dynamic> json) {

    return fPasswordModel(email: json['email']);
  }
}