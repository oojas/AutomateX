import 'package:automateX/Pages/DFA.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:route_transitions/route_transitions.dart';

final String doc = 'lib/Notes/sir1.pdf';
final String doc2 = 'lib/Notes/sir2.pdf';
final String doc3 = 'lib/Notes/sir3.pdf';
final String doc4 = 'lib/Notes/sir4.pdf';
final String doc5 = 'lib/Notes/sir5.pdf';
final String doc6 = 'lib/Notes/sir6.pdf';
final String doc7 = 'lib/Notes/sir7.pdf';
final String doc8 = 'lib/Notes/sir8.pdf';
final String doc9 = 'lib/Notes/sir9.pdf';
final String doc10 = 'lib/Notes/sir10.pdf';
final String doc11 = 'lib/Notes/sir11.pdf';
final String doc12 = 'lib/Notes/sir12.pdf';
final String doc13 = 'lib/Notes/sir13.pdf';
final String doc14 = 'lib/Notes/sir14.pdf';

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
    _controller.forward();
  }

  Future<String> prepareTestPdf(String doc) async {
    final ByteData bytes = await DefaultAssetBundle.of(context).load(doc);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$doc';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);

    return tempDocumentPath;
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
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
        backgroundColor: Colors.black87,
        body: AnimatedBuilder(
            animation: _controller,
            builder: (BuildContext context, Widget child) {
              return Transform(
                transform: Matrix4.translationValues(
                    animation.value * width, 0.0, 0.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  addAutomaticKeepAlives: true,
                  addSemanticIndexes: true,
                  addRepaintBoundaries: true,
                  children: [
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 1",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 2",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc2);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 3",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc3);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 4",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc4);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 5",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc5);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 6",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc6);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 7",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc7);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 8",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc8);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 9",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc9);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 10",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc10);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 11",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc11);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 12",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc12);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 13",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc13);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                    GestureDetector(
                      child: Card(
                        color: Colors.orange.shade500,
                        child: Center(
                            child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 30, horizontal: 8),
                          child: Text(
                            "Notes Number 14",
                            style: GoogleFonts.shojumaru(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        )),
                        borderOnForeground: true,
                        elevation: 30,
                        shadowColor: Colors.orange.shade300,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        margin: EdgeInsets.all(15),
                      ),
                      onTap: () async {
                        var path = await prepareTestPdf(doc14);
                        Navigator.of(context).push(PageRouteTransition(
                            animationType: AnimationType.slide_right,
                            builder: (context) => DFA(path)));
                      },
                    ),
                  ],
                ),
              );
            }));
  }
}
