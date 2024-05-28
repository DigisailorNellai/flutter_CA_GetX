import 'package:practice_for_ca_and_state_management/domain/entities/user.dart';

class UserModels extends User {

UserModels ({

required String firstName,
required String lastName,
required String age,
required String country,
required String city,
required String state,
required String postalCode,
required String email,
required String phNum,

}) :super ( firstName: firstName , lastName: lastName, age: age, country: country, city: city, state: state, postalCode: postalCode, email: email, phNum: phNum);

Map<String, dynamic> toJson() {
 
 return {

  'firstName' : firstName,
  'lastName'  : lastName,
  'age'       : age,
  'country'   : country,
  'city'      : city,
  'state'     : state,
  'postalCode': postalCode,
  'email'     : email,
  'phNum'     : phNum
  };
}

 factory UserModels.fromJson(Map<String,dynamic> json) {

  return UserModels(
    firstName: json ['firstName'], 
    lastName: json ['lastName'], 
    age: json ['age'], 
    country: json ['country'], 
    city: json ['city'], 
    state: json ['state'], 
    postalCode: json ['postalCode'], 
    email: json ['email'], 
    phNum: json ['phNum']
    );

 }

}