import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Automatex',
    home: splash(),
    debugShowCheckedModeBanner: false,
  ));
}
