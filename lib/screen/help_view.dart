import 'package:flutter/material.dart';
import 'package:quick_notes/style/app_style.dart';

class HelpView extends StatefulWidget {
  const HelpView({super.key});

  @override
  State<HelpView> createState() => _HelpViewState();
}

class _HelpViewState extends State<HelpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sSecondary,
      // appBar: AppBar(
      //   title: Text(
      //     "Yardım",
      //     style: sEncodeSansSemiBold.copyWith(color: sBlack, fontSize: 36),
      //   ),
      //   backgroundColor: sPrimary,
      //   elevation: 0,
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: const BoxDecoration(
                color: sPrimary,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "Yardım",
                      style: sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 32.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 90,
              decoration: const BoxDecoration(
                color: sPrimary,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Kullanici Rehberi",
                    style: sEncodeSansRegular.copyWith(
                      color: sWhite,
                      fontSize: 40.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            Container(
              height: 100,
              width: 329,
              decoration: BoxDecoration(
                  color: sPrimary, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.note_alt_outlined,
                      size: 60,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Notlar",
                      style: sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 24.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 100,
              width: 329,
              decoration: BoxDecoration(
                  color: sPrimary, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.image_search_outlined,
                      size: 60,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "OCR",
                      style: sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 24.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              height: 100,
              width: 329,
              decoration: BoxDecoration(
                  color: sPrimary, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Icon(
                      Icons.lock_outline_rounded,
                      size: 60,
                    ),
                  ),
                  TextButton(
                    child: Text(
                      "Reset Password",
                      style: sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 24.0,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
