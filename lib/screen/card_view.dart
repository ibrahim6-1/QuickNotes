import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/style/app_style.dart';

Widget cardView(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: cardColor[doc['color_id']],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: sEncodeSansBold,
          ),
          SizedBox(height: 5.0),
          Text(
            doc["create_date"],
            style: sEncodeSansRegular,
          ),
          SizedBox(height: 10.0),
          Text(
            doc["note_content"],
            style: sEncodeSansMedium,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
