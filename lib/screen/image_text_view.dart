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
        automaticallyImplyLeading: false,
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
            Container(
              padding: EdgeInsets.only(top: 40),
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                      "'+' Düğmesini kullanarak bir resim yükleyin",
                      style:sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 14
                      ) ,),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(top: 40),
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(30)),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text(
                      "Taramayı gerçekleştirmek için “Görüntüyü Tara” düğmesine tıklayın",
                      style: sEncodeSansRegular.copyWith(
                        color: sBlack,
                        fontSize: 14
                      ),
                      ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: sWhite, // Butonun arka plan rengi
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Butonun köşe yarıçapı
                      ),
                    ),
                    child: Text(
                      'Görüntüyü Sil',
                      style: sEncodeSansSemiBold.copyWith(
                          color: sBlack, fontSize: 14),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: sPrimary, // Butonun arka plan rengi
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(30), // Butonun köşe yarıçapı
                      ),
                    ),
                    child: Text(
                      'Görüntüyü Tara',
                      style: sEncodeSansSemiBold.copyWith(
                          color: sWhite, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: sWhite,
        ),
        backgroundColor: sPrimary,
      ),
    );
  }
}
