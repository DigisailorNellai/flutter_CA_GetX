
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/splashController.dart';

class splashScreen extends StatelessWidget {
  const splashScreen({super.key});
 
  
 @override
  Widget build(BuildContext context) {
      final splashController controller = Get.put(splashController());
    return Scaffold(
       backgroundColor:  const Color.fromARGB(255, 5, 165, 255),
      body: Center(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
                width: 150, // Width of the circular shape
                height: 150, // Height of the circular shape
                decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, // Color of the circular shape
              ),
              child: Image.asset('assets/Group 5 (1).png'),
          ),
          ),
           Positioned(
            top: 450,
            left: 180,
            child: CustomPaint(
          size: const Size(20, 300),
          painter: VerticalLinePainter(),
        ),
            ),
            Positioned(
              top: 740,
              left: 150,
              child: CustomPaint(
          size: const Size(100, 45), // Change size according to your requirement
          painter: SemiCirclePainter(),
        ),
            )
            
        ],
      )
      )
      );
  }
  }

  class VerticalLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = Colors.white
      ..strokeWidth = 4.0;

    canvas.drawLine(
      Offset(size.width , 0),
      Offset(size.width , size.height),
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.white // Change color as needed
      ..style = PaintingStyle.fill;

    // Draw semicircle
    canvas.drawArc(
      Rect.fromLTWH(0, 0, size.width, size.height),
      0,
      -3.14, // 180 degrees in radians
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}