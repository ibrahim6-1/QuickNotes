import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/screen/card_view.dart';
import 'package:quick_notes/screen/help_view.dart';
import 'package:quick_notes/screen/image_text_view.dart';
import 'package:quick_notes/screen/note.read.dart';
import 'package:quick_notes/screen/note_edit.dart';
import 'package:quick_notes/screen/profile_view.dart';
import 'package:quick_notes/style/app_style.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sSecondary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Notlar",
          style: sEncodeSansSemiBold.copyWith(color: sBlack, fontSize: 36),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              iconSize: 24,
              icon: Icon(Icons.color_lens_rounded, color: sBlack)),
          IconButton(
              onPressed: () {},
              iconSize: 24,
              icon: Icon(Icons.grid_view_outlined, color: sBlack)),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream:
                  FirebaseFirestore.instance.collection("Notes").snapshots(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (snapshot.hasData) {
                  return GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                    children: snapshot.data!.docs
                        .map((note) => cardView(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => NoteRead(note),
                                  ));
                            }, note))
                        .toList(),
                  );
                }
                return Text(
                  "Not yok",
                  style: sEncodeSansRegular.copyWith(color: sBlack),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => NoteEdit()));
        },
        child:Icon(
          Icons.add,
          color: sWhite,
        ),
        backgroundColor: sPrimary,
      ),
    );
  }
}
