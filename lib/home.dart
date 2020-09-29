import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  @override
  void initState() {
    _controller =
        new AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animation = new Tween(begin: 0.0, end: 300.0).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 15.0,
          automaticallyImplyLeading: true,
          leading: Icon(
            Icons.archive,
            color: Colors.cyanAccent,
          ),
          title: Text(
            "What do you wanna Learn?",
            style: GoogleFonts.permanentMarker(
                fontSize: 21,
                fontStyle: FontStyle.normal,
                color: Colors.amberAccent),
          ),
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Hi"),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ListTile(
                  leading: Icon(Icons.note_add),
                  title: Text(
                    "Notes",
                    style: GoogleFonts.courgette(
                        fontSize: 21, color: Colors.redAccent),
                  ),
                  dense: true,
                  selected: true,
                  focusColor: Colors.pinkAccent,
                  hoverColor: Colors.pink,
                  contentPadding: EdgeInsets.all(12.0),
                )
              ],
            ),
          ],
        ));
  }
}
