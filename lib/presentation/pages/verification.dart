import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/verification_controller.dart';

import '../controllers/auth_controller.dart';

class verificationPage extends StatelessWidget {
  const verificationPage({super.key});
  

  @override
  Widget build(BuildContext context) {

    Otp2Controller controller2 = Get.find();
    verficationController controller = Get.put(verficationController());
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/2149182034 1 (1).png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.5),
          ),
           SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
                  Row(
            children: [
                  IconButton(onPressed: () {
                      Get.back();
                  },
                  //{Get.back();},
                   icon: const Icon(Icons.arrow_back),
          color: (Colors.white),
          ),
          const SizedBox(width: 5,),
          const Text('Verification Page',
          style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 18 ,
            fontWeight: FontWeight.w400 ,
            color: Colors.white
          ),)
            ],),
            SizedBox(height: 100,),
            Text('Verify Email Address',
                style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 32,
                color: Colors.white
              ),
                ),
                const SizedBox(height: 20,),
                const Text('Enter your OTP we have send to your register mail id\n            . Kindly check your inbox',
                style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.white
              ),),
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: 
                  List.generate(
                    4,
                    (index) {
              return SizedBox(
                width: 50,
                child:  TextFormField(
                      
                      controller: controller.controllers[index],
                      focusNode: controller.focusNodes[index],
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      maxLength: 1,
                      onChanged:  (value) {
                    if (value.length == 1) {
                      controller.nextField(index);
                    }
                  },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        counter: const Offstage(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                            //color: Theme.of(context).accentColor,
                            width: 2.0,
                            
                          ),
                        ),
                      ),
                    ), 
                );
                    }
                  )
                 
                
                  ),
                  Padding(padding: EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Obx(() {
                    return Text('${controller.remainingSeconds.value}',
                    style: TextStyle(
                      color: Colors.white
                    ),
                    );
                  }),
                    ],
                  ),
                  ),
                  
                   
              const SizedBox(height: 20,),
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
                     controller2.verify(controller2.otp2Controller.text);
                     
              }, style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
              ),
              child: const Text('Verify',
              style: TextStyle(
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white
              ),))
              ),
              ),
              const SizedBox(height: 20,),
                 Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn\'t receive the OTP',
                    style: TextStyle(
                      fontFamily: 'Lato',
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Obx(() {
                    return Visibility(
                      visible: controller.showResend.value,
                      child:GestureDetector(
                      onTap: controller.resend,
                      child: const Text(
                        'Resend OTP',
                        style: TextStyle(
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Colors.white),
                      )));
                  })
                 
                ],
              )
            ],
          )
           
          ),
         
          //  Padding(padding: const EdgeInsets.only(top: 130, left: 20),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       const 
          //     ],
          //   ),
          //   ),
          )
          
        ],
      ),

    );
  
  }
}