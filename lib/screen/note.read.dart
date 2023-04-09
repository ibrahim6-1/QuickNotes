import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/style/app_style.dart';

class NoteRead extends StatefulWidget {
  NoteRead(this.doc, {super.key});
  QueryDocumentSnapshot doc;
  @override
  State<NoteRead> createState() => _NoteReadState();
}

class _NoteReadState extends State<NoteRead> {
  @override
  Widget build(BuildContext context) {
    int color_id = widget.doc['color_id'];
    return Scaffold(
      backgroundColor: cardColor[color_id],
      appBar: AppBar(
        iconTheme: IconThemeData(color: sBlack),
        backgroundColor: cardColor[color_id],
        title: Text("Quick Not",
            style: sEncodeSansBold.copyWith(
              color: sBlack,
            )),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.doc["note_title"],
              style: sEncodeSansBold,
            ),
            SizedBox(height: 5.0),
            Text(
              widget.doc["create_date"],
              style: sEncodeSansRegular,
            ),
            SizedBox(height: 30.0),
            Text(
              widget.doc["note_content"],
              style: sEncodeSansMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: sPrimary,
        onPressed: () {
        },
        child: Icon(Icons.remove),
      ),
    );
  }
}
