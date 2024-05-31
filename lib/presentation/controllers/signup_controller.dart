import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/otp.dart';
import 'package:practice_for_ca_and_state_management/domain/entities/password.dart';
import 'package:practice_for_ca_and_state_management/domain/useCases/sign_up.dart';

import '../../domain/entities/user.dart';



class signUpController extends GetxController {

  TextEditingController firstNameController = TextEditingController();
TextEditingController lastNameController = TextEditingController();
TextEditingController ageController = TextEditingController();
TextEditingController countryController = TextEditingController();
TextEditingController cityController = TextEditingController();
TextEditingController stateController = TextEditingController();
TextEditingController postalCodeController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController phoneController = TextEditingController();

final signUpUsecase useCase;

signUpController( {
  required this.useCase,
  });


Future<void> signUp(String firstName, String lastName , String age, String country, String city, String state, String postalCode, String email,String phNum) 

async {

final firstName = firstNameController.text.trim();
final lastName = lastNameController.text.trim();
final age = ageController.text.trim();
final country= countryController.text.trim();
final city= cityController.text.trim();
final state= stateController.text.trim();
final postalCode = postalCodeController.text.trim();
final email = emailController.text.trim();
final phNum= phoneController.text.trim();


if(firstName.isEmpty ||
lastName.isEmpty ||
age.isEmpty ||
country.isEmpty ||
city.isEmpty ||
state.isEmpty ||
postalCode.isEmpty ||
email.isEmpty ||
phNum.isEmpty) {

final user = User(firstName: firstName, lastName: lastName, age: age, country: country, city: city, state: state, postalCode: postalCode, email: email, phNum: phNum);
Get.snackbar('Error', 'Please fill in all fields');
 return;

}

 try{

await useCase.call(User(firstName: firstName, lastName: lastName, age: age, country: country, city: city, state: state, postalCode: postalCode, email: email, phNum: phNum));
Get.snackbar('Successfully resgistered', 'create you password');
Get.toNamed('/createPassword');
}
catch (e) {

print('$e');

} 

@override
  void onClose() {
    firstNameController.dispose();
    lastNameController.dispose();
    ageController.dispose();
    countryController.dispose();
    cityController.dispose();
    postalCodeController.dispose();
    emailController.dispose();
    phoneController.dispose();
    super.onClose();

}
}
}

class passController extends GetxController {

  TextEditingController passwordController = TextEditingController();
 TextEditingController confirmPasswordController = TextEditingController();

  final passwordUsecases passUseCase;
  passController ({required this.passUseCase});

  Future<void> createPassword(String password , String confirmPassword) async {

  final password = passwordController.text;
  final confirmPassword = confirmPasswordController.text;

  if(password.isEmpty || confirmPassword.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
  }

try{

 await passUseCase.call(cPassword(password: password, confirmPassword: confirmPassword));
Get.snackbar('password created successfully', 'check your mail for verification');
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

 





