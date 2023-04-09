import 'package:flutter/material.dart';
import 'package:quick_notes/style/app_style.dart';

class AboutView extends StatefulWidget {
  const AboutView({super.key});

  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: sBlack),
        backgroundColor: sPrimary,
        title: Text("Hakkında",
            style: sEncodeSansBold.copyWith(
              color: sBlack,
            )),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 2,
                  color: Color(0xffFFB347),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 1,
                  height: 00,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Bu uygulama',
                    style: sEncodeSansSemiBold.copyWith(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Center(
                    child: Text(
                      'Oyun ve Uygulama Akademisi App Jam\'inde\n ',
                      style: sEncodeSansSemiBold.copyWith(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'Zeynep Betül Hoş',
                    style: sEncodeSansMedium.copyWith(fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'İbrahim Balta',
                    style: sEncodeSansMedium.copyWith(fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'Furkan Oğuzhan',
                    style: sEncodeSansMedium.copyWith(fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    'Eda Nur Işık',
                    style: sEncodeSansMedium.copyWith(fontSize: 17),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'tarafından geliştirilmiştir.',
                    style: sEncodeSansSemiBold.copyWith(fontSize: 20),
                  ),
                )
              ],
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.home),
              onPressed: () => Navigator.pushNamed(context, "/mainScreen"),
              style: ElevatedButton.styleFrom(
                backgroundColor: sPrimary, // Butonun arka plan rengi
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 140),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16), // Butonun köşe yarıçapı
                ),
              ),
              label: Text(
                'Anasayfa',
                style: sEncodeSansSemiBold.copyWith(
                    color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
