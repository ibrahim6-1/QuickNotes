import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/style/app_style.dart';

class NoteEdit extends StatefulWidget {
  const NoteEdit({super.key});

  @override
  State<NoteEdit> createState() => _NoteEditState();
}

class _NoteEditState extends State<NoteEdit> {
  int color_id = Random().nextInt(cardColor.length);
  String date = DateTime.now().toString();

  TextEditingController _titleController = TextEditingController();
  TextEditingController _mainController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor[color_id],
      appBar: AppBar(
        backgroundColor: cardColor[color_id],
        elevation: 0,
        iconTheme: IconThemeData(color: sBlack),
        title: Text("Yeni not ekle",
            style: sEncodeSansBold.copyWith(
              color: sBlack,
            )),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: "Başlık"),
              style: sEncodeSansBold,
            ),
            SizedBox(height: 10),
            Text(
              date,
              style: sEncodeSansBold,
            ),
            SizedBox(height: 30),
            TextField(
              controller: _mainController,
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: "İçerik"),
              style: sEncodeSansRegular,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: sPrimary,
        onPressed: () async {
          FirebaseFirestore.instance.collection("Notes").add({
            "note_title": _titleController.text,
            "create_date": date,
            "note_content": _mainController.text,
            "color_id": color_id
          }).then((value) {
            print(value.id);
            Navigator.pop(context);
          }).catchError((e) => print("note eklenmedi $e"));
        },
        child: Icon(Icons.save_outlined),
      ),
    );
  }
}
