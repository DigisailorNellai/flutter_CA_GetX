import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/signup_controller.dart';

class signUp extends StatelessWidget {
  const signUp({super.key});

  @override
  Widget build(BuildContext context) {

final signUpController controller = Get.find();


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
            
            SingleChildScrollView(
              child:  Padding(padding: EdgeInsets.only(top: 40, left: 20, right: 20),
             child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                      IconButton(onPressed: (){
                        Get.back();
             }, icon: const Icon(Icons.arrow_back,
             color: Colors.white)),
                  ],
                ),
               const  Text('Tell Us About Yourself',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),
                const SizedBox(height: 30,),
                const Text('First Name',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.firstNameController,
                decoration: const  InputDecoration(
                  hintText: 'First Name',
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 15,),
              const Text('Last Name',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.lastNameController,
                decoration:  const InputDecoration(
                  hintText: 'Last Name',
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 15,),
              const Text('Age',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.ageController,
                decoration:  const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 30,),
              const Text('Where Do you want to serve',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),
                const SizedBox(height: 30,),
                const Text('Country',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.countryController,
                decoration:  const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 15,),
              const Text('City',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.cityController,
                decoration:  const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 15,),
              const SizedBox(height: 15,),
              const Text('State',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.stateController,
                decoration:  const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 15,),
              const Text('Postal Code',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.postalCodeController,
                decoration:  const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 30,),
             const  Text('How Can We Contact you?',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white
                ),),
                 const SizedBox(height: 20,),
              const Text('Email',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.emailController,
                decoration:  const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
               const SizedBox(height: 15,),
              const Text('Phone Number',
                style: TextStyle(
                  fontFamily: 'Lato',
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),),
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
              child: TextFormField(
                controller: controller.phoneController,
                decoration:  const InputDecoration(
                  border: InputBorder.none,
                  contentPadding:  EdgeInsets.symmetric(horizontal: 16.0), 
                 // Optional: adjust content padding
                ),
              ),
              )
              ),
              const SizedBox(height: 30,),
              Center(
              child: Container(
                width: 250,
                height: 47,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: 
                   ElevatedButton(
                  onPressed: (){
                     controller.signUp(
                      controller.firstNameController.text, 
                      controller.lastNameController.text, 
                      controller.ageController.text, 
                      controller.countryController.text, 
                      controller.cityController.text, 
                      controller.stateController.text, 
                      controller.postalCodeController.text, 
                      controller.emailController.text, 
                      controller.phoneController.text);
                      //Get.toNamed('/createPassword');
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
              ),
              const SizedBox(height: 20,),
              // RadioListTile(
              //   value: _selectedValue, 
              //   groupValue: _selectedValue, 
              //   onChanged: (value){
              //     setState(() {
              //       _selectedValue = value!;
              //     });
                  
              //   }
              //   ),
              //   const SizedBox(width: 5,),
              //   Row(
              //     children: [
              //       const Text('I agree with the',
              //       style: TextStyle(
              //         fontFamily: 'Lato',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 12,
              //         color: Colors.white
              //       ),),
              //       GestureDetector(
              //         onTap: (){

              //         },
              //         child: const Text('Terms Condition',
              //         style: TextStyle(
              //         fontFamily: 'Lato',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 12,
              //         color: Colors.blue
              //       ),),
              //       ),
              //       const Text('and',
              //       style: TextStyle(
              //         fontFamily: 'Lato',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 12,
              //         color: Colors.white
              //       ),),
              //        GestureDetector(
              //         onTap: (){

              //         },
              //         child: const Text('Privacy Policy',
              //         style: TextStyle(
              //         fontFamily: 'Lato',
              //         fontWeight: FontWeight.w400,
              //         fontSize: 12,
              //         color: Colors.blue
              //       ),),
              //       )
              //     ],
              //   )
                
              ],
             ),),
            )
            
          ]
    )
    );

}
}