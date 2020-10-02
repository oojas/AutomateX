import 'package:automateX/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:sleek_button/sleek_button.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation, animation, animation1, animation2;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));
    animation = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));
    animation1 = new Tween(begin: -0.8, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));
    animation2 = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));

    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return AnimatedBuilder(
        animation: _controller,
        builder: (BuildContext context, Widget child) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Container(
              child: Center(
                child: Column(
                  children: [
                    Transform(
                        transform: Matrix4.translationValues(
                            _animation.value * width, 0.0, 0.0),
                        child: Image.asset("lib/Assets/man.jpg")),
                    Transform(
                        transform: Matrix4.translationValues(
                            animation.value * width, 0.0, 0.0),
                        child: Text("HI Geeks!",
                            style: GoogleFonts.rockSalt(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepOrange))),
                    Padding(
                      padding: const EdgeInsets.all(11.0),
                      child: Transform(
                        transform: Matrix4.translationValues(
                            animation1.value * width, 0.0, 0.0),
                      ),
                    ),
                    Transform(
                      transform: Matrix4.translationValues(
                          animation2.value * width, 0.0, 0.0),
                      child: SleekButton(
                        onTap: () {
                          Navigator.of(context).push(PageRouteTransition(
                              animationType: AnimationType.slide_left,
                              builder: (context) => home()));
                        },
                        style: SleekButtonStyle.outlined(
                          color: Colors.purple,
                          context: context,
                          rounded: true,
                          size: SleekButtonSize.medium,
                        ),
                        child: Text("Are You Ready",
                            style: GoogleFonts.bungeeShade(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                color: Colors.purple)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 100.0, horizontal: 30),
                      child: SleekButton(
                        style: SleekButtonStyle.light(
                          color: Colors.purple,
                          context: context,
                          rounded: true,
                          size: SleekButtonSize.medium,
                        ),
                        child: Text("Made by Ojas Gupta",
                            style: GoogleFonts.pacifico(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.pink.shade900)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
