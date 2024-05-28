import 'package:practice_for_ca_and_state_management/data/models/login_model.dart';
import 'package:practice_for_ca_and_state_management/data/models/otp.dart';
import 'package:practice_for_ca_and_state_management/data/models/pass_model.dart';
import 'package:practice_for_ca_and_state_management/data/models/user_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class dataSource {

final String baseUrl = 'http://10.0.2.2:8080';

Future<void> signUp(UserModels user) async {

final response = await http.post(
  Uri.parse('$baseUrl/user/signup'),
  body: json.encode(user.toJson()),
  headers: { 'Content-Type' : 'application/json'} 
);
print(response.statusCode);
if(response.statusCode != 201) {

throw Exception('Failed to sign up');

}

}

 Future<void> cpassword(passModels createPassword) async {

  final response = await http.post(
    Uri.parse('http://10.0.2.2:8080/user/signup/password'),
    headers: { 'Content-Type' : 'application/json'},
    body: json.encode(createPassword.toJson())
  );

  if(response.statusCode != 201) {
  
throw Exception('cannot create password');
  }

 }

Future<void> verifyOtp(otpModel otp) async {

final response = await http.post(
  Uri.parse('$baseUrl/verifyMail'),
  headers: {'Content-Type' : 'applicattion/json'},
  body: json.encode(otp.toJson())
);

  if(response.statusCode != 200) {
    throw Exception('Invalid otp');
  }
}

 Future<void> userLogin(loginModel login ) async {

   final response = await http.post(
    Uri.parse('$baseUrl/user/login'),
    headers:  { 'Content-Type' : 'application/json'},
    body: json.encode(login.toJson())
   );

   if(response.statusCode != 200) {
      throw Exception('Failed to login');
   }
   print(response.statusCode);
 }

 Future<void> fPassword(fPasswordModel chPassword) async {
    final response = await http.post(
      Uri.parse('$baseUrl/forgotpassword'),
      headers: { 'Content-Type' : 'application/json'},
      body: json.encode(chPassword.toJson())
    );
    print(response.statusCode);
    
    if(response.statusCode != 200) {
      throw Exception('Incorrect Email');
    }
    
 }

  Future<void> verifyOtps(otpModel otp) async {
    final response = await http.post(
      Uri.parse('$baseUrl/verifyOtps'),
      headers: { 'Content-Type' : 'application/json'},
      body: json.encode(otp.toJson())
    );

    if(response.statusCode != 200) {
      throw Exception('incorrect OTP');
    }
  }

  Future<void> changePassword(passModels createPassword) async {

  final response = await http.post(
    Uri.parse('$baseUrl/changePassword'),
    headers: { 'Content-Type' : 'application/json'},
    body: json.encode(createPassword.toJson())
  );

  if(response.statusCode != 201) {
  
throw Exception('cannot create password');
  }

 }
}