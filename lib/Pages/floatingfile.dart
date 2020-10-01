import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:google_fonts/google_fonts.dart';

class floatfile extends StatefulWidget {
  @override
  _floatfileState createState() => _floatfileState();
}

class _floatfileState extends State<floatfile>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    animation = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.bounceInOut));
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 20,
        backgroundColor: Colors.black87,
        title: Text("Additional Notes",
            style: GoogleFonts.mountainsOfChristmas(
                fontSize: 21,
                color: Colors.yellowAccent,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
    );
  }
}
