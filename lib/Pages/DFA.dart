import 'package:flutter/material.dart';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';

class DFA extends StatelessWidget {
  final String pdfPath;

  DFA(this.pdfPath);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
          title: Text("Document"),
          backgroundColor: Colors.blueGrey.shade500,
        ),
        path: pdfPath);
  }
}
