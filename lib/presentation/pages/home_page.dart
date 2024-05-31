import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:practice_for_ca_and_state_management/presentation/controllers/image_controller.dart';
import 'package:practice_for_ca_and_state_management/presentation/widgets/animation.dart';
import 'package:practice_for_ca_and_state_management/presentation/widgets/appbar.dart';
import 'package:practice_for_ca_and_state_management/presentation/widgets/handburger.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    imageController _controller = Get.put(imageController());
    return Scaffold(
      appBar: customAppBar(),
      drawer: const customDrawer(),
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                    Image.asset('assets/Group 55.png'),
                    Padding(padding: const EdgeInsets.only(top: 20,left: 10),
                    child: Column(
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       const Center(
                          child: Text('We raise by lifting other',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),)
                        ) ,
                        const Center(
                          child: Text('Charity is the act of giving help, support, or \nresources voluntarily to those in need, without expecting anything in return.',
                          style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 15
                        ),
                          )
                        ),
                        const SizedBox(height: 10,),
                        ElevatedButton(onPressed: (){

                        }, style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)
                        ),
                        child: const Text('Explore Now',
                        style: TextStyle(
                          color: Colors.white
                        ),))
                      ],
                    ),)
                    
              ],
            ),
            const SizedBox(height: 20,),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Our Club Lead Members',
            style: TextStyle(
              color: Colors.black,
              fontSize: 31,
              fontWeight: FontWeight.bold,
            ),),
            ),
            const Divider(
              color: Colors.blue,
              thickness: 5,),
              const SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 350,
                    width: 250,
                    child: Card(
                      elevation: 20 ,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextButton(onPressed: (){

                        }, child: Text('Admin')),
                        ),
                        const SizedBox(height: 10,),
                        const Material(
                          elevation: 20,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/div.image1.png'),
                        ),
                        ),
                        const SizedBox(height: 5,),
                        const Text('Noah',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        const SizedBox(height: 10,),
                        const Text('Assistant professor in wils university for 10 years. Admin for Tirupur branch. And part of our organization for 6 year',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17
                        ),
                        textAlign: TextAlign.center,),
                        GestureDetector(
                          child: const Text('Read more',
                          style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.blue,
                          decoration: TextDecoration.underline
                        ),),
                        )

                        
                      ],
                    ),
                  ),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    height: 350,
                    width: 250,
                    child: Card(
                      elevation: 20 ,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextButton(onPressed: (){

                        }, child: const Text('Admin')),
                        ),
                        const SizedBox(height: 10,),
                        const Material(
                          elevation: 20,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/div.image2.png'),
                        ),
                        ),
                        const SizedBox(height: 5,),
                        const Text('Sulthan',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        const SizedBox(height: 10,),
                        const Text('Assistant professor in wils university for 10 years. Admin for Tirupur branch. And part of our organization for 6 year',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17
                        ),
                        textAlign: TextAlign.center,),
                        GestureDetector(
                          child: const Text('Read more',
                          style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.blue,
                          decoration: TextDecoration.underline
                        ),),
                        )

                        
                      ],
                    ),
                  ),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    height: 350,
                    width: 250,
                    child: Card(
                      elevation: 20 ,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextButton(onPressed: (){

                        }, child: Text('Admin')),
                        ),
                        const SizedBox(height: 10,),
                        const Material(
                          elevation: 20,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/div.image3.png'),
                        ),
                        ),
                        const SizedBox(height: 5,),
                        const Text('Prasanna',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        const SizedBox(height: 10,),
                        const Text('Assistant professor in wils university for 10 years. Admin for Tirupur branch. And part of our organization for 6 year',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17
                        ),
                        textAlign: TextAlign.center,),
                        GestureDetector(
                          child: const Text('Read more',
                          style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.blue,
                          decoration: TextDecoration.underline
                        ),),
                        )
                        
                      ],
                    ),
                  ),
                  ),
                  const SizedBox(width: 20,),
                  SizedBox(
                    height: 350,
                    width: 250,
                    child: Card(
                      elevation: 20 ,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: TextButton(onPressed: (){

                        }, child: Text('Admin')),
                        ),
                        const SizedBox(height: 10,),
                        const Material(
                          elevation: 20,
                          shape: CircleBorder(),
                          child: CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage('assets/div.image1.png'),
                        ),
                        ),
                        const SizedBox(height: 5,),
                        const Text('Nithya',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        const SizedBox(height: 10,),
                        const Text('Assistant professor in wils university for 10 years. Admin for Tirupur branch. And part of our organization for 6 year',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 17
                        ),
                        textAlign: TextAlign.center,),
                        GestureDetector(
                          child: const Text('Read more',
                          style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 18,
                          color: Colors.blue,
                          decoration: TextDecoration.underline
                        ),),
                        )
                      ],
                    ),
                  ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Club Branch Locations',
            style: TextStyle(
              color: Colors.black,
              fontSize: 31,
              fontWeight: FontWeight.bold,
            ),),
            ),
            const Divider(
              thickness: 5,
              color: Colors.blue,
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _controller.showText,
                  child: Stack(
                    children: [
                          Image.asset('assets/pexels-cadomaestro-1170412 1.png',
                          //height: 20,
                           width: 160,),
                           Obx(() => _controller.isShowing.value
                           ? Container(
                            height: 130,
                            width: 160,
                            color: Colors.black.withOpacity(0.5),
                            child: Center(
                              child: Text('Dindigul',
                              style: TextStyle(color: Colors.white),),
                            ),
                           ) : const SizedBox.shrink()
                           )
                    ],
                  ),
                ),
                
                
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: _controller.showText1,
                  child: Stack(
                    children: [
                          Image.asset('assets/pexels-divinetechygirl-1181264 1.png',
                          //height: 20,
                           width: 160,),
                           Obx(() => _controller.isShowing1.value
                           ? Container(
                            height: 130,
                            width: 160,
                            color: Colors.black.withOpacity(0.5),
                            child: Center(
                              child: Text('chennai',
                              style: TextStyle(color: Colors.white),),
                            ),
                           ) : const SizedBox.shrink()
                           )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _controller.showText2,
                  child: Stack(
                    children: [
                          Image.asset('assets/pexels-fox-1595385 1.png',
                          //height: 20,
                           width: 160,),
                           Obx(() => _controller.isShowing2.value
                           ? Container(
                            height: 130,
                            width: 160,
                            color: Colors.black.withOpacity(0.5),
                            child: Center(
                              child: Text('Thirunelveli',
                              style: TextStyle(color: Colors.white),),
                            ),
                           ) : const SizedBox.shrink()
                           )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: _controller.showText3,
                  child: Stack(
                    children: [
                          Image.asset('assets/pexels-hillaryfox-1595392 1.png',
                          //height: 20,
                           width: 160,),
                           Obx(() => _controller.isShowing3.value
                           ? Container(
                            height: 130,
                            width: 160,
                            color: Colors.black.withOpacity(0.5),
                            child: Center(
                              child: Text('Thoothukudi',
                              style: TextStyle(color: Colors.white),),
                            ),
                           ) : const SizedBox.shrink()
                           )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: _controller.showText4,
                  child: Stack(
                    children: [
                          Image.asset('assets/pexels-nguyendesigner-244133 1.png',
                          //height: 20,
                           width: 160,),
                           Obx(() => _controller.isShowing4.value
                           ? Container(
                            height: 130,
                            width: 160,
                            color: Colors.black.withOpacity(0.5),
                            child: Center(
                              child: Text('Madurai',
                              style: TextStyle(color: Colors.white),),
                            ),
                           ) : const SizedBox.shrink()
                           )
                    ],
                  ),
                ),
                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: _controller.showText5,
                  child: Stack(
                    children: [
                          Image.asset('assets/pexels-product-school-1299359-2678468 1.png',
                          //height: 20,
                           width: 160,),
                           Obx(() => _controller.isShowing5.value
                           ? Container(
                            height: 130,
                            width: 160,
                            color: Colors.black.withOpacity(0.5),
                            child: Center(
                              child: Text('vilathikulam',
                              style: TextStyle(color: Colors.white),),
                            ),
                           ) : const SizedBox.shrink()
                           )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  Image.asset('assets/Rectangle 35.png',
                //height: 200,
                width: 300,),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Stack(
                  children: [
                      Image.asset('assets/Rectangle 36.png',
                //height: 200,
                width: 300,),
                Padding(padding: EdgeInsets.only(left: 90,top: 10),
                child: Column(
                  children: [
                      Text('Uniting for Good',
                 style: TextStyle(
                  fontWeight: FontWeight.bold
                 ),),
                 const SizedBox(height: 5,),
                 Text('we make a difference every day,\neverywhere we serve. And with \nthe support of our international \nassociation,we are changing \nlives, communities and the \nworld we share.')
                  ],
                ),
                )
                  ],
                ) 
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                      Image.asset('assets/Rectangle 38.png',
                //height: 200,
                width: 300,),
                Padding(padding: EdgeInsets.only(left: 20,top: 20),
                child: Column(
                  children: [
                      
                 const SizedBox(height: 5,),
                 Text('Lions serve their local communities in\nso many ways, and we’re uniting to\nserve key global causes and special\ninitiatives to address some of the\ngreatest challenges facing our\nworld today.')
                  ],
                ),
                )
                  ],
                ) 
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                  Image.asset('assets/Rectangle 37.png',
                //height: 200,
                width: 300,),
              ],
            ),
            const SizedBox(height: 20,),
            SizedBox(
              //width: 10,
              height: 85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: [
                  MovingImages()
              ],
            )
            )
            
          ],
        ),
      ),)
      


    ); 
  }
}