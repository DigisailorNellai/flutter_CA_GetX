import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/auth_controller.dart';

class membersLogin extends StatelessWidget {
  const membersLogin({super.key});


  @override
  Widget build(BuildContext context) {
    authController controller = Get.find();
    
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/2149182034 1 (1).png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            color: Colors.black.withOpacity(0.5), // Adjust opacity as needed
          ),
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome,',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Email',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Theme(
                      data: ThemeData(
                        // Set cursor color here
                        textSelectionTheme: const TextSelectionThemeData(
                            cursorColor: Colors.black),
                      ),
                      child: TextFormField(
                        controller: controller.emailController,
                        decoration: const InputDecoration(
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal:
                                  16.0), // Optional: adjust content padding
                        ),
                      ),
                    )),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Password',
                  style: TextStyle(
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Theme(
                      data: ThemeData(
                        // Set cursor color here
                        textSelectionTheme: const TextSelectionThemeData(
                            cursorColor: Colors.black),
                      ),
                      child: Obx(() =>  TextFormField(
                        controller: controller.passwordController,
                        obscureText: !controller.visibile.value,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 10),
                            suffixIcon: IconButton(
                                onPressed: controller.visibility,
                                icon: Icon(controller.visibile.value
                                    ? Icons.visibility
                                    : Icons
                                        .visibility_off)) // Optional: adjust content padding
                            ),
                      ), )
                     
                    )),
                const SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed('/forgotPassword');
                      },
                      child: const Text(
                        'Forget Password',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 12),
                      ),
                    )),
                const SizedBox(
                  height: 40,
                ),
                Container(
                    width: 350,
                    height: 47,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50)),
                    child: ElevatedButton(
                        onPressed: () {
                         controller.login(
                          controller.emailController.text, 
                          controller.passwordController.text);
                        },
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.blue)),
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              color: Colors.white),
                        ))),
                const SizedBox(
                  height: 10,
                ),
                
                  Obx(() {
                    return CheckboxListTile
                    (
                      title: const Text('keep me logged in',
                      style: TextStyle(color: Colors.white),),
                      value: controller.check.value,
                      onChanged: controller.checkBox,
                      checkColor: Colors.white,
                      activeColor: Colors.black,
                      
                    );
                    
                }),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed('/signUp');
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                            color: Colors.blue,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}