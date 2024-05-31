import 'package:get/get.dart';

class imageController extends GetxController {

  final isShowing = false.obs;
  final isShowing1 = false.obs;
  final isShowing2 = false.obs;
  final isShowing3 = false.obs;
  final isShowing4 = false.obs;
  final isShowing5 = false.obs;

  void showText(){
    isShowing.value = true;
    Future.delayed(Duration(seconds: 3), () {
      isShowing.value = false;
    });
  }
  void showText1(){
    isShowing1.value = true;
    Future.delayed(Duration(seconds: 3), () {
      isShowing1.value = false;
    });
  }
  void showText2(){
    isShowing2.value = true;
    Future.delayed(Duration(seconds: 3), () {
      isShowing2.value = false;
    });
  }
  void showText3(){
    isShowing3.value = true;
    Future.delayed(Duration(seconds: 3), () {
      isShowing3.value = false;
    });
  }
  void showText4(){
    isShowing4.value = true;
    Future.delayed(Duration(seconds: 3), () {
      isShowing4.value = false;
    });
  }
  void showText5(){
    isShowing5.value = true;
    Future.delayed(Duration(seconds: 3), () {
      isShowing5.value = false;
    });
  }
}