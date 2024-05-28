import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/auth_controller.dart';

class newPassword extends StatelessWidget {
  const newPassword({super.key});

  @override
  Widget build(BuildContext context) {
    changePassController controller = Get.find();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/20502 1 (1).png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back, color: Colors.white)),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    'New Password',
                    style: TextStyle(
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 50,),
              const Text(
                      'New Password',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w600,
                          fontSize: 32,
                          color: Colors.white),
                    ),
                    const Text(
                      'Please enter your new password',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(padding: EdgeInsets.only(left: 30,right: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Password',
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Theme(
                              data: ThemeData(
                                // Set cursor color here
                                textSelectionTheme:
                                    const TextSelectionThemeData(
                                        cursorColor: Colors.black),
                              ),
                              child:  Obx(() => TextFormField(
                                controller: controller.passwordController,
                                obscureText: !Get.find<authController>().visibile.value,
                                decoration: InputDecoration(
                                    hintText: 'Password',
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 15),
                                    suffixIcon: IconButton(
                                        onPressed: Get.find<authController>().visibility,
                                        icon: Icon(Get.find<authController>().visibile.value
                                            ? Icons.visibility
                                            : Icons
                                                .visibility_off)) // Optional: adjust content padding
                                    ),
                              ),)
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          'Confirm Password',
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: Theme(
                              data: ThemeData(
                                // Set cursor color here
                                textSelectionTheme:
                                    const TextSelectionThemeData(
                                        cursorColor: Colors.black),
                              ),
                              child: Obx(() => TextFormField(
                                controller: controller.confirmPasswordController,
                                obscureText: !Get.find<authController>().visible2.value,
                                decoration: InputDecoration(
                                    hintText: 'Confirm Password',
                                    border: InputBorder.none,
                                    contentPadding: const EdgeInsets.symmetric(
                                        horizontal: 16.0, vertical: 15),
                                    suffixIcon: IconButton(
                                        onPressed: Get.find<authController>().visibility2,
                                        icon: Icon(Get.find<authController>().visible2.value
                                            ? Icons.visibility
                                            : Icons
                                                .visibility_off)) // Optional: adjust content padding
                                    ),
                              ),)
                              
                            )),
                  ],
                ),
                    ),
                    const SizedBox(height: 30,),
                Center(
                          child: Container(
                              width: 250,
                              height: 47,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(30)),
                              child: ElevatedButton(
                                  onPressed: () {
                                    controller.createPassword(controller.passwordController.text, controller.confirmPasswordController.text);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.blue)),
                                  child: const Text(
                                    'Done',
                                    style: TextStyle(
                                        fontFamily: 'Lato',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 20,
                                        color: Colors.white),
                                  ))),
                        )
                  ]
              ),
                        
              ),
          )
        ],
      ),
    );

  }
}