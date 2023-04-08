import 'package:flutter/material.dart';
import 'package:quick_notes/style/app_style.dart';

class ImageTextView extends StatefulWidget {
  const ImageTextView({super.key});

  @override
  State<ImageTextView> createState() => _ImageTextViewState();
}

class _ImageTextViewState extends State<ImageTextView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sSecondary,
      appBar: AppBar(
        title: Text(
          "Görüntüden Metne",
          style: sEncodeSansSemiBold.copyWith(
            color: sBlack,
            fontSize: 30,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              iconSize: 24,
              icon: Icon(Icons.copy_outlined, color: sBlack)),
        ],
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(child: Text("resim mi yazıya çevir")),
          ],
        ),
      ),
    );
  }
}
