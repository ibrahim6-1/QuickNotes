import 'package:flutter/material.dart';
import 'package:quick_notes/style/app_style.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Widget pageViewControl() {
    return Builder(builder: ((context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < 3; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 6),
              width: i == pageNumber ? 25 : 6,
              height: 8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: i == pageNumber ? sPrimary : sWhite),
            ),
        ],
      );
    }));
  }

  PageController nextpage = PageController();
  int pageNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackground,
      body: PageView(
        onPageChanged: (value) {
          setState(() {
            pageNumber = value;
          });
        },
        controller: nextpage,
        children: [
          Column(
            children: [
              const SizedBox(height: 61),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "HOŞ GELDİNİZ",
                      style: sEncodeSansRegular.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Quick Note",
                      style: sEncodeSansBold.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Image.asset("assets/images/amico.png"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Hızlı Notlar",
                      style: sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 5),
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.end,
                      "Aklınızdakileri hızlıca yakalayın",
                      style: sEncodeSansRegular.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              pageViewControl(),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  nextpage.animateToPage(1,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 116,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(sBorderRadius),
                    color: sPrimary,
                  ),
                  child: Center(
                    child: Text(
                      "İleri",
                      style: sEncodeSansRegular.copyWith(
                          color: sSecondary, fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 61),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "HOŞ GELDİNİZ",
                      style: sEncodeSansRegular.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Quick Note",
                      style: sEncodeSansBold.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Image.asset("assets/images/cuate.png"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Yapılacaklar",
                      style: sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 5),
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.end,
                      "Günlük görevlerinizi listeleyin",
                      style: sEncodeSansRegular.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              pageViewControl(),
              const SizedBox(height: 30),
              InkWell(
                onTap: () {
                  nextpage.animateToPage(2,
                      duration: Duration(milliseconds: 800),
                      curve: Curves.easeIn);
                },
                child: Container(
                  width: 116,
                  height: 56,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(sBorderRadius),
                    color: sPrimary,
                  ),
                  child: const Center(
                    child: Text(
                      "İleri",
                      style: TextStyle(
                        color: sSecondary,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 61),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "HOŞ GELDİNİZ",
                      style: sEncodeSansRegular.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Quick Note",
                      style: sEncodeSansBold.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Image.asset("assets/images/amico2.png"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.start,
                      "Görüntüyü Metne Dönüştür",
                      style: sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 24,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 30, top: 5),
                child: Row(
                  children: [
                    Text(
                      textAlign: TextAlign.end,
                      "Resimlerinizi yükleyin ve metne dönüştürün",
                      style: sEncodeSansRegular.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              pageViewControl(),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, "/singUpView"),
                    child: Container(
                      width: 161,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(sBorderRadius),
                        color: sPrimary,
                      ),
                      child: Center(
                        child: Text(
                          "Kayıt Ol",
                          style: sEncodeSansRegular.copyWith(
                            color: sWhite,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pushNamed(context, "/loginView"),
                    child: Container(
                      width: 161,
                      height: 56,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(sBorderRadius),
                        color: sWhite,
                      ),
                      child: Center(
                        child: Text(
                          "Giriş Yap",
                          style: sEncodeSansRegular.copyWith(
                            color: sPrimary,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ],
      ),
    );
  }
}
