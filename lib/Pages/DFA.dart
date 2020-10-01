import 'package:flutter/material.dart';
import 'package:firebase_storage/firebase_storage.dart';

final String file = "DFA.pdf";
final String name = "";

class DFA extends StatefulWidget {
  @override
  _DFAState createState() => _DFAState();
}

class _DFAState extends State<DFA> {
  static String path = "";
  static String pdfurl = "";
  @override
  void initState() {
    // LaunchFile.loadFromFirebase(context, file);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [],
      ),
    );
  }
}
