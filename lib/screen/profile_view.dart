import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quick_notes/screen/about_view.dart';
import 'package:quick_notes/screen/login_view.dart';
import 'package:quick_notes/screen/note_view.dart';
import 'package:quick_notes/screen/splash_view.dart';
import 'package:quick_notes/style/app_style.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  // final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sSecondary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Profil",
          style: sEncodeSansSemiBold.copyWith(color: sBlack, fontSize: 36),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(38.0),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/akademifoto.png',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Oyun ve Uygulama Akademisi',
                        style: sEncodeSansMedium.copyWith(
                            color: Colors.black, fontSize: 20),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'oua@gmail.com',
                        style: sEncodeSansRegular.copyWith(
                            color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 2,
                  color: sGrey,
                ),
                const Divider(
                  color: sBlack,
                  thickness: 1,
                  height: 00,
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
              child: Row(
                children: [
                  Icon(Icons.wb_incandescent_outlined),
                  SizedBox(width: 10.0),
                  Text(
                    'Karanlık Mod',
                    style: sEncodeSansSemiBold.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  Spacer(),
                  // Switch(
                  //   value: isDarkModeEnabled,
                  //   onChanged: (value) {
                  //     setState(() {
                  //       isDarkModeEnabled = value;
                  //     });
                  //   },
                  // ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NoteView()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 0, horizontal: 100),
                    child: Row(
                      children: [
                        const Icon(Icons.note),
                        const SizedBox(width: 10.0),
                        Text('Arşiv Notlar',
                            style: sEncodeSansSemiBold.copyWith(
                                color: Colors.black, fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutView()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 100),
                    child: Row(
                      children: [
                        const Icon(Icons.info),
                        const SizedBox(width: 10.0),
                        Text('Hakkında',
                            style: sEncodeSansSemiBold.copyWith(
                                color: Colors.black, fontSize: 18)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.logout_outlined),
              onPressed: () {
                FirebaseAuth.instance.signOut().then((value) { 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SplashView()));
                });
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xffFFB347), // Butonun arka plan rengi
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 140),
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(16), // Butonun köşe yarıçapı
                ),
              ),
              label: Text(
                'ÇIKIŞ',
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
