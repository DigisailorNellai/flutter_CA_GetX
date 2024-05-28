import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/auth_controller.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/signup_controller.dart';

class createPassword extends StatelessWidget {
  const createPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final authController controller = Get.find();
    final passController passwController = Get.find();

    return Scaffold(
      
        body: Stack(
          children: [
             
            Image.asset('assets/20502 1 (1).png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),
            Padding(padding: const EdgeInsets.symmetric(vertical: 40),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    children: [
                      IconButton(onPressed: (){
                        Get.back();
             }, icon: const Icon(Icons.arrow_back,
             color: Colors.white)),
                    ],
                  ),
                  const SizedBox(height: 30,),
          Padding(padding: const EdgeInsets.only(left: 30,right: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  const Text('Create Password',
        style: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w600,
          fontSize: 32,
          color: Colors.white
        ),
        ),
        const SizedBox(height: 20,),
        
        const Text('Password',
        style: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.white
        ),
        ),
        const SizedBox(height: 10,),
          Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:  Theme(
              data: ThemeData(
                // Set cursor color here
                textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
              ),
              child:  Obx(() => TextFormField(
                        controller: passwController.passwordController,
                        obscureText: !controller.visibile.value,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 10),
                            suffixIcon:  IconButton(
                                onPressed: controller.visibility,
                                icon: Icon( controller.visibile.value
                                    ? Icons.visibility
                                    : Icons
                                        .visibility_off)) 
                            ),
                      ),) 
              )
              ),
              const SizedBox(height: 20,),
              const Text('Confirm Password',
        style: TextStyle(
          fontFamily: 'Lato',
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Colors.white
        ),
        ),
        const SizedBox(height: 10,),
          Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:  Theme(
              data: ThemeData(
                // Set cursor color here
                textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
              ),
              child:  Obx(() => TextFormField(
                        controller: passwController.confirmPasswordController,
                        obscureText: !controller.visible2.value,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 10),
                            suffixIcon:  IconButton(
                                onPressed: controller.visibility2,
                                icon: Icon( controller.visible2.value
                                    ? Icons.visibility
                                    : Icons
                                        .visibility_off)) 
                            ),
                      ),) 
              )
              ),
              ],
            )
          ),
                
              const SizedBox(height: 50,),
              Center(
              child: Container(
                width: 250,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(
                  onPressed: (){
                      passwController.createPassword(
                        passwController.passwordController.text, 
                        passwController.confirmPasswordController.text);
                        //Get.toNamed('/mainVerification');
              }, style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
              ),
              child: const Text('Next',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white
              ),))
              ),
              )

                ],
              )
            )
            
            ),
        //      SingleChildScrollView(
        //      child: Padding(padding:  const EdgeInsets.symmetric(
        //   horizontal: 20,
        //   vertical: 200
        // ),
        // child: Column(
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   mainAxisAlignment: MainAxisAlignment.start,
        //   children: [
                
        //   ],
        // ) 
        //      )
        
        
        //      )
          ],
        ),
        
    );
  }
}