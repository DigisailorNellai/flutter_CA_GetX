import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/forgot_password.dart';
import 'package:practice_for_ca_and_state_management/domain/useCases/signIn.dart';

import '../../domain/entities/otp.dart';
import '../../domain/entities/password.dart';
import '../../domain/entities/user_login.dart';
import '../../domain/useCases/sign_up.dart';

class authController extends GetxController {

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  

  final loginUsecase loginUse;
  

  authController ({
    required this.loginUse,
  });
  
  final RxBool _visibility = false.obs;
  RxBool get visibile => _visibility;

  final RxBool _visibility2 = false.obs;
  RxBool get visible2 => _visibility2;

 var _checkValue = false.obs;
   get check => _checkValue;

  void visibility () {
_visibility.value = !_visibility.value;
  }

  void visibility2 () {
    _visibility2.value = !_visibility2.value;
  }

  void checkBox (bool ? value){
    //print('Checkbox toggled: $value');
    _checkValue.value = value ?? false;
  }

Future<void> login( String email, String password) async {

    final email = emailController.text;
    final password = passwordController.text;

    if(email.isEmpty || password.isEmpty) {
        Get.snackbar('Error', 'Please fill in all fields');
        return;
    }

    try{

await loginUse.call(userLogin(email : email , password : password));
Get.snackbar('Successfully loggedin', ' ');
//Get.toNamed('/createPassword');
}
catch (e) {

print('$e');

} 

@override
  void onClose() {
    
    emailController.dispose();
    passwordController.dispose();
    super.onClose();

}

}
}

class fPasswordController extends GetxController {

  final fPasswordUsecase fPasswordUse;

  fPasswordController({required this.fPasswordUse});
  TextEditingController email2Controller = TextEditingController();

  Future<void> chPassword(String email) async {
  

final email2 = email2Controller.text;

if(email2.isEmpty){
  Get.snackbar('Enter your email', '');
  return;
}

try{
  await fPasswordUse.call(fPassword(email: email2));
  Get.toNamed('/verificationPage');
}catch (e) {
  print('$e');
}
@override
  void onClose() {
    
    email2Controller.dispose();
    super.onClose();

}

}

}

class Otp2Controller extends GetxController {

    TextEditingController otp2Controller = TextEditingController();

    final otpUseCase verifyUseCase;
    Otp2Controller ({required this.verifyUseCase});

    Future<void> verify(String otp) async {

      final verify = otp2Controller.text;

      if(verify.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
  }

    try{

    await verifyUseCase.call(verifyOtp(otp : verify));
    Get.snackbar('You are registered', '');
    Get.toNamed('/newPassword');

    }catch (e) {

        print('$e');

    }
    @override
  void onClose() {
    
    otp2Controller.dispose();
    super.onClose();

    }
  }
}

class changePassController extends GetxController {

  TextEditingController passwordController = TextEditingController();
 TextEditingController confirmPasswordController = TextEditingController();

  final passwordUsecases passUseCase;
  changePassController ({required this.passUseCase});

  Future<void> createPassword(String password , String confirmPassword) async {

  final password = passwordController.text;
  final confirmPassword = confirmPasswordController.text;

  if(password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
  }

try{

 await passUseCase.call(cPassword(password: password, confirmPassword: confirmPassword));
Get.snackbar('password changed successfully', '');
Get.toNamed('/mainVerification');

}catch (e) {

print('$e');

} 
}

@override
void onClose() {

passwordController.dispose();
confirmPasswordController.dispose();
super.onClose();

}

  }

  class resendController extends GetxController {

    TextEditingController resendOtpController = TextEditingController();

    final otpUseCase verifyUseCase;
    resendController ({required this.verifyUseCase});

    Future<void> verify(String otp) async {

      final verify = resendOtpController.text;

      if(verify.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
  }

    try{

    await verifyUseCase.call(verifyOtp(otp : verify));
    Get.snackbar('You are registered', '');

    }catch (e) {

        print('$e');

    }
    @override
  void onClose() {
    
    resendOtpController.dispose();
    super.onClose();

    }
  }
}


