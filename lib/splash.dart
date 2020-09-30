import 'package:automateX/login.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart';

class splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: login(),
      loadingText: Text("AutomateX",
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          style: GoogleFonts.bangers(
              fontSize: 50, color: Colors.amber, fontWeight: FontWeight.bold)),
      image: Image.asset(
        "lib/Assets/img.gif",
        // width: MediaQuery.of(context).size.width,
        // height: 1000,
      ),
      photoSize: 205,
      backgroundColor: Color(0xFF000000),
    );
  }
}
