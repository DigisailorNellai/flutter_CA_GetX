import 'package:flutter/material.dart';
import 'package:get/get.dart';

class customDrawer extends StatelessWidget {
  const customDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: const BoxDecoration(
                      //color: Colors.blue,
                      ),
                  child: Image.asset(
                    'assets/Digital Logo Design 1.png',
                  )),
              ListTile(
                leading: const Text(
                  'AboutUs',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                onTap: () {
                  Get.toNamed('/aboutUs');
                },
              ),
              ListTile(
                leading:  const Text(
                  'Member Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                onTap: () {
                  
                },
              ),
              ListTile(
                leading: const Text(
                  'Events',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                onTap: () {
                  Get.toNamed('/events');
                },
              ),
              
            ],
          ),
        );
    
  }
}