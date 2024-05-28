import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/auth_controller.dart';

class forgotPassword extends StatelessWidget {
  const forgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
   
    fPasswordController controller = Get.find();
    return Scaffold(
      body: Stack(
          children: [
             
            Image.asset('assets/Rectangle 55 (1).png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            ),
            Container(
              color: Colors.black.withOpacity(0.5),
            ),

            Padding(padding: const EdgeInsets.only(top: 40),
            child: SingleChildScrollView(
              child: Column(
                children: [
                     Row(
              children: [
                   IconButton(onPressed: (){
                      Get.back();
             }, icon: const Icon(Icons.arrow_back,
             color: Colors.white)),
             const SizedBox(width: 5,),
             const Text('Forget Password',
             style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w400,
              fontSize: 18,
              color: Colors.white
             ),)
              ],
            ),
            const SizedBox(height: 50,),
            const Text('Forgot Password',
                    style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w600,
              fontSize: 28,
              color: Colors.white
             ),),
             const SizedBox(height: 30,),
             const Text('Please write your email to recieve a confirmation\n                  code to set a new password',
             style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.white
             )),
             const SizedBox(height: 20,),
             const Padding(padding: EdgeInsets.only(left: 20),
             child:Align(
              alignment: Alignment.centerLeft,
              child:  Text('Email',
                style: TextStyle(
              fontFamily: 'Lato',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.white
             )),
             ),),
             const SizedBox(height: 10,),
             Padding(padding: const EdgeInsets.only(left: 30,right: 30),
             child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50)
                ),
                child:  Theme(
              data: ThemeData(
                // Set cursor color here
                textSelectionTheme: const TextSelectionThemeData(cursorColor: Colors.black),
              ),
              child:  TextFormField(
                controller: controller.email2Controller,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0), // Optional: adjust content padding
                ),
              ),
              )
              ), ),
             
              const SizedBox(height: 50,),
              Center(
              child: Container(
                width: 220,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: ElevatedButton(
                  onPressed: () {
                    controller.chPassword(controller.email2Controller.text);
                    }
                  , style: ButtonStyle(
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

              )],
              ),
            )
           
            
            )
            
            // const Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   children: [
                
            //   ],
            // )
          ]   
      )
    );
  }
  }
