import 'package:flutter/material.dart';
import 'package:quick_notes/screen/help_view.dart';
import 'package:quick_notes/screen/image_text_view.dart';
import 'package:quick_notes/screen/note_view.dart';
import 'package:quick_notes/screen/profile_view.dart';
import 'package:quick_notes/style/app_style.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
    int pageIndex = 0;
    List<Widget> pageList = <Widget>[
      NoteView(),
      ImageTextView(),
      HelpView(),
      ProfileView()
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageList[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.grey[300],
        currentIndex: pageIndex,
        onTap: (value) {
          setState(() {
            pageIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: sNavigatoinClick,
        unselectedItemColor: sGrey,
        iconSize: 36,
        selectedFontSize: 16,
        unselectedFontSize: 14,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.note_alt_outlined,
            ),
            label: "Notlar",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.image_search_outlined),
            label: "OCR",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_outlined),
            label: "Yardım ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: "Profil",
          ),
        ],
      ),
    );
  }
}
