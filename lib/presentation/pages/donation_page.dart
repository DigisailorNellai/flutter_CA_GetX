import 'package:flutter/material.dart';
import 'package:practice_for_ca_and_state_management/presentation/widgets/appbar.dart';
import 'package:practice_for_ca_and_state_management/presentation/widgets/handburger.dart';

class donationPage extends StatelessWidget {
  const donationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      drawer: const customDrawer(),
      body: Padding(padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
        children: [
          Stack(
            children: [
              Image.asset('assets/2151295370 1.png'),
              const Padding(padding: EdgeInsets.only(left: 100,top: 80),
              child:  Text('Make a donation',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text('Make a Donation',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text('With 100% of donations going towards grants and programs, LCIF empowers the compassionate service of members and those who need our help. Although those benefitting from your support may never know of your generosity, Digitally Clubs International Foundation and our beneficiaries are grateful for your support.',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 15
            ),),
          ),
          const SizedBox(
            height: 20,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: Text('Join us in spreading kindness through your donation',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
          ),
          const SizedBox(height: 20,),
          ExpansionTile(
            
              leading: const Icon(Icons.brightness_1,
              size: 10,
              color: Colors.black,), 
              title: RichText(
                text: const TextSpan(
                      text: 'What cause would you like to support?',
                      
                      style: TextStyle(
                        
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                      ),
              children: [
                const SizedBox(height: 20,),
                  DefaultTabController(length: 2, 
          child: Column(
            children: [
                 const TabBar(
            tabs: [
              Tab(
                  text: 'Empowering Service Fund',
              ),
              Tab(
                  text: 'Disaster Relief Fund', 
              ) 
            ],
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
            unselectedLabelStyle: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.normal,
                ),),
             SizedBox(
              height: 280,
              //width: 20,
              child:  TabBarView(
              children: [
                    Padding(padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                          const Text('A donation to LCIF and all the causes the foundationsupports.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15
                          ),),
                          const SizedBox(height: 15,),
                          SizedBox(
                            height: 100,
                            width: 350,
                            child: Card(
                              child: TextButton(
                              onPressed: () {}, 
                              child: const Text('Give to Empowering Service Fund',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),)),
                            )
                            ,
                          )
                      ],
                    ),
                    ),
                    Padding(padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                          const Text('A donation to LCIF specifically reserved for disaster relief.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15
                          ),),
                          const SizedBox(height: 15,),
                          SizedBox(
                            height: 100,
                            width: 300,
                            child: Card(
                              child: TextButton(
                              onPressed: () {}, 
                              child: const Text('Give to Disaster Relief Fund',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),)),
                            )
                          ),
                          const Text('**Please note that donations to the Disaster Relief Fund are not eligible to receive District & Club Community Impact Grants.**',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                            fontSize: 15
                          ),),
                      ],
                    ),
                    ),
                  
              ]),
            ) 
            ],
          )
             ),
              ],
              ),
             ExpansionTile(
              leading: const Icon(Icons.brightness_1,
              size: 10,
              color: Colors.black,), 
              title: RichText(
                text: const TextSpan(
                      text: 'How much would you like to donate?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                      ),
                children: [
                  Padding(padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('One-Time-Gift',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Every-Month',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Every-Year',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                    ],
                  )
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
              ExpansionTile(
              leading: const Icon(Icons.brightness_1,
              size: 10,
              color: Colors.black,), 
              title: RichText(
                text: const TextSpan(
                      text: 'Who is the donor?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                      ),
                children: [
                  Padding(padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Club member',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Student',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Non Member',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Organization',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Business',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                    ],
                  )
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
              ExpansionTile(
              leading: const Icon(Icons.brightness_1,
              size: 10,
              color: Colors.black,), 
              title: RichText(
                text: const TextSpan(
                      text: 'Is this an anonymous gift?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                      ),
                children: [
                  Padding(padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('No',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Yes',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                    ],
                  )
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
              ExpansionTile(
              leading: const Icon(Icons.brightness_1,
              size: 10,
              color: Colors.black,), 
              title: RichText(
                text: const TextSpan(
                      text: 'Is recognition requested for this donation?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),
                    ),
                      ),
                children: [
                  Padding(padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Yes',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('No',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
                    ],
                  )
                  ),
                  const SizedBox(height: 10,)
                ],
              ),
              const SizedBox(height: 25,),
              Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue
                    ),
                    child: TextButton(onPressed: () {

                    }, child: const Text('Submit',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 15
                    ),),)
                     
                  ),
        ]
      ),
          ) 
      )
    );
  }
}