import 'package:automateX/Pages/DFA.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 15.0,
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.question_answer,
          color: Colors.yellow,
        ),
        title: Text(
          "What do you wanna Learn?",
          style: GoogleFonts.permanentMarker(
              fontSize: 21,
              fontStyle: FontStyle.normal,
              color: Colors.amberAccent),
        ),
      ),
      backgroundColor: Colors.green.shade900,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ListTile(
                onTap: () {
                  Navigator.of(context).push(PageRouteTransition(
                      animationType: AnimationType.slide_right,
                      builder: (context) => DFA()));
                },
                leading: Icon(
                  Icons.functions,
                  color: Colors.white70,
                ),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
                title: Text(
                  "DFA",
                  style:
                      GoogleFonts.courgette(fontSize: 21, color: Colors.white),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                leading: Icon(
                  Icons.functions,
                  color: Colors.white70,
                ),
                title: Text(
                  "NFA",
                  style:
                      GoogleFonts.courgette(fontSize: 21, color: Colors.white),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                leading: Icon(
                  Icons.functions,
                  color: Colors.white70,
                ),
                title: Text(
                  "NFA --> DFA",
                  style:
                      GoogleFonts.courgette(fontSize: 21, color: Colors.white),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                leading: Icon(
                  Icons.functions,
                  color: Colors.white70,
                ),
                title: Text(
                  "Minimization of DFA",
                  style:
                      GoogleFonts.courgette(fontSize: 21, color: Colors.white),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                leading: Icon(
                  Icons.functions,
                  color: Colors.white70,
                ),
                title: Text(
                  "CNF | GNF | CFG",
                  style:
                      GoogleFonts.courgette(fontSize: 21, color: Colors.white),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                leading: Icon(
                  Icons.functions,
                  color: Colors.white70,
                ),
                title: Text(
                  "Practice Questions",
                  style:
                      GoogleFonts.courgette(fontSize: 21, color: Colors.white),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.white,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300.0, top: 100),
            child: FloatingActionButton(
              onPressed: null,
              splashColor: Colors.blue,
              backgroundColor: Colors.amber,
              child: Icon(Icons.speaker_notes),
            ),
          ),
        ],
      ),
    );
  }
}
