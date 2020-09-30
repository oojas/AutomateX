import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';

class login extends StatefulWidget {
  @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation, animation, animation1;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animation = new Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));
    animation = new Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));
    animation1 = new Tween(begin: -0.8, end: 0.0).animate(
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
                      padding: const EdgeInsets.all(9.0),
                      child: Transform(
                        transform: Matrix4.translationValues(
                            animation1.value * width, 0.0, 0.0),
                        child: GoogleSignInButton(
                          onPressed: () {},
                          darkMode: true,
                        ),
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
