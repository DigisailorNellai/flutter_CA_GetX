import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class verficationController extends GetxController {

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

@override
  void onInit() {
    super.onInit();
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
}

