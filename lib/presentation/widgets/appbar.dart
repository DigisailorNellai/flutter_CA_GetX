import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customAppBar extends StatelessWidget implements PreferredSizeWidget {
  

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: GestureDetector(
          onTap: () {
              Get.toNamed('/homePage');
          } ,
          child: Image.asset('assets/Digital Logo Design 1.png'),
        ),
        
         //Image.asset('assets/Digital Logo Design 1.png'),
        actions: [
          ElevatedButton(onPressed: (){
              
          }, style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.blue)
          ),
          child: const Text('Join',
          style: TextStyle(color: Colors.white),)),
          const SizedBox(width: 10,),
          ElevatedButton(onPressed: (){
                  Get.toNamed('/donationPage');
          }, style: const ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.yellow)
          ),
          child: const Text('Donate',
          style: TextStyle(color: Colors.black))),
          IconButton(onPressed: () {
                Scaffold.of(context).openDrawer();
          }, icon: const Icon(Icons.menu))
        ],
      );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}