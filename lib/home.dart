import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What do you want to learn",
            style: GoogleFonts.acme(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.amber)),
      ),
    );
  }
}
