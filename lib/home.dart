import 'dart:io';
import 'dart:typed_data';

import 'package:automateX/Pages/DFA.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:route_transitions/route_transitions.dart';
import 'package:path_provider/path_provider.dart';

const String _documentPath = 'lib/Assets/DFA.pdf';

class home extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> with SingleTickerProviderStateMixin {
  Future<String> prepareTestPdf() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_documentPath);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_documentPath';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);

    return tempDocumentPath;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 25.0,
        automaticallyImplyLeading: true,
        leading: Icon(
          Icons.question_answer,
          color: Colors.blue.shade500,
        ),
        title: Text(
          "What do you wanna Learn?",
          style: GoogleFonts.permanentMarker(
              fontSize: 21,
              fontStyle: FontStyle.normal,
              color: Colors.lightBlue),
        ),
        backgroundColor: Colors.blueGrey.shade600,
      ),
      backgroundColor: Colors.purple.shade100,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Builder(
                builder: (context) => ListTile(
                  onTap: () async {
                    var path = await prepareTestPdf();
                    Navigator.of(context).push(PageRouteTransition(
                        animationType: AnimationType.slide_right,
                        builder: (context) => DFA(path)));
                  },
                  leading: Icon(
                    Icons.functions,
                    color: Colors.blueGrey.shade600,
                  ),
                  trailing: Icon(
                    Icons.info_outline,
                    color: Colors.blueGrey.shade600,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  title: Text(
                    "DFA",
                    style: GoogleFonts.secularOne(
                      fontSize: 30,
                      color: Colors.blueGrey.shade600,
                    ),
                  ),
                  dense: true,
                  selected: true,
                  focusColor: Colors.pinkAccent,
                  hoverColor: Colors.pink,
                  contentPadding: EdgeInsets.all(12.0),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                leading: Icon(
                  Icons.functions,
                  color: Colors.blueGrey.shade600,
                ),
                title: Text(
                  "NFA",
                  style: GoogleFonts.secularOne(
                      fontSize: 30, color: Colors.blueGrey.shade600),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.blueGrey.shade600,
                ),
                onTap: () {},
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                leading: Icon(
                  Icons.functions,
                  color: Colors.blueGrey.shade600,
                ),
                title: Text(
                  "NFA --> DFA",
                  style: GoogleFonts.secularOne(
                      fontSize: 30, color: Colors.blueGrey.shade600),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.blueGrey.shade600,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                leading: Icon(
                  Icons.functions,
                  color: Colors.blueGrey.shade600,
                ),
                title: Text(
                  "Minimization of DFA",
                  style: GoogleFonts.secularOne(
                      fontSize: 30, color: Colors.blueGrey.shade600),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.blueGrey.shade600,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                leading: Icon(
                  Icons.functions,
                  color: Colors.blueGrey.shade600,
                ),
                title: Text(
                  "CNF | GNF | CFG",
                  style: GoogleFonts.secularOne(
                      fontSize: 30, color: Colors.blueGrey.shade600),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.blueGrey.shade600,
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                leading: Icon(
                  Icons.functions,
                  color: Colors.blueGrey.shade600,
                ),
                title: Text(
                  "Practice Questions",
                  style: GoogleFonts.secularOne(
                      fontSize: 30, color: Colors.blueGrey.shade600),
                ),
                dense: true,
                selected: true,
                focusColor: Colors.pinkAccent,
                hoverColor: Colors.pink,
                contentPadding: EdgeInsets.all(12.0),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.blueGrey.shade600,
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 300.0, top: 90),
            child: FloatingActionButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              splashColor: Colors.blue,
              backgroundColor: Colors.lightBlue,
              child: Icon(Icons.speaker_notes),
            ),
          ),
        ],
      ),
    );
  }
}
