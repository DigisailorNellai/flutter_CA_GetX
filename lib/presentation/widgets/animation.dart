import 'package:flutter/material.dart';

class MovingImages extends StatefulWidget {
  @override
  _MovingImagesState createState() => _MovingImagesState();
}

class _MovingImagesState extends State<MovingImages>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    _animation = Tween<Offset>(
      begin: Offset(1, 0),
      end: Offset(-1, 0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.linear,
    ));

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reset();
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildAnimatedImage(String assetPath, int index) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: Offset(1 + index * 0.25, 0),
        end: Offset(-1, 0),
      ).animate(CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      )),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(assetPath),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildAnimatedImage('assets/logo Blédina (baby food _ alimentation pour bébé) 1.png',0),
          _buildAnimatedImage('assets/Lytning 1.png',1),
          _buildAnimatedImage('assets/Premium Vector _ Pixel game studio logo template 1.png',2),
          _buildAnimatedImage('assets/Premium Vector _ Pixel game studio logo template 1.png',3),
        ],
      ),
    );
  }
    }
