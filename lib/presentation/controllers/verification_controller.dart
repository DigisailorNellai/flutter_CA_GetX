import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/data/dataSources/auth_remote_data_source.dart';

import '../../domain/entities/otp.dart';
import '../../domain/useCases/sign_up.dart';

class verficationController extends GetxController {

    TextEditingController otpController = TextEditingController();
    //dataSource source = Get.put(dataSource());
    final otpUseCase verifyUseCase;
    final dataSource source;
    verficationController ({required this.verifyUseCase, required this.source});

     final remainingSeconds = 60.obs;
    final showResend = false.obs;

    final List<TextEditingController> controllers = List.generate(
    4,
    (index) => TextEditingController(),
    );

   final List<FocusNode> focusNodes = List.generate(
    4,
    (index) => FocusNode(),
    );

  @override
  void onInit() {
    super.onInit();
    startTimer();
  }

  void startTimer() {
    
    Timer.periodic(Duration(seconds: 1), (timer) { 
      if (remainingSeconds.value > 0){
        remainingSeconds.value--;
        
      }
       if (remainingSeconds == 0){
       showResend.value = true;
       timer.cancel();
       }
    });
  }

  void resend () {
   remainingSeconds.value = 60;
   showResend.value = false;
  startTimer();
 }

  void nextField(int index) {
    if (index < controllers.length - 1) {
      focusNodes[index + 1].requestFocus();
    } else {
      focusNodes[index].unfocus();
    }
  }

  @override
  void onClose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.onClose();
  }

  String getOtp() {
    return controllers.map((controller) => controller.text).join();
  }
  
    Future<void> verify() async {

      // final verify = otpController.text;
      final otp = getOtp();
      if(otp.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
  }

    try{

    await verifyUseCase.call(verifyOtp(otp : otp));
    Get.snackbar('You are registered', '');
    Get.toNamed('/homePage');

    }catch (e) {

        print('$e');

    }

    }

     Future<void> verify2() async {

      // final verify = otpController.text;
      final otp = getOtp();
      if(otp.isEmpty) {
      Get.snackbar('Error', 'Please fill all fields');
      return;
  }

    try{

    await verifyUseCase.call(verifyOtp(otp : otp));
    Get.snackbar('your verified', 'create a new password');
    Get.toNamed('/newPassword');

    }catch (e) {

        print('$e');

    }

    }

    void resendOtp()  {

   source.resendOtpmail;
    resend(); 
  }
}

   

    
  

