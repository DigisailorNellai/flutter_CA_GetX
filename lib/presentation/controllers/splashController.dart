import 'package:get/get.dart';

class splashController extends GetxController {

@override


void onReady()  {
    super.onReady();
     Future.delayed(Duration(seconds: 3));
     _navigateToNext();
  }
     void _navigateToNext() async {
    await Future.delayed(Duration(seconds: 2)); // Simulate a delay for splash screen
    Get.offNamed('/intro');
  }
}

  

