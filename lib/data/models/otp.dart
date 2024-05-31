
import 'package:practice_for_ca_and_state_management/domain/entities/otp.dart';

class otpModel extends verifyOtp {

  otpModel ({
   required String otp
  }) :super(otp: otp);

  Map<String, dynamic> toJson() {
    return {
      'otp' : otp
    };
  }

  factory otpModel.fromJson(Map<String,dynamic> json) {

    return otpModel(otp: json['otp']);
  }
}