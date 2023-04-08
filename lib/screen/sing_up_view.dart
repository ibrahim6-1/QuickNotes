import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../style/app_style.dart';

@immutable
late String email, password;
final formkey = GlobalKey<FormState>();
final firebaseAuth = FirebaseAuth.instance;

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackground,
      body: SingleChildScrollView(
        child: Center(
          child: Form(
            key: formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 10),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, "/splashView"),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: sPrimary,
                          )),
                      Text(
                        "Yeni Hesap oluştur",
                        style: sEncodeSansSemiBold.copyWith(
                          color: sBlack,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 60),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sizi tanıyalım !",
                        style: sEncodeSansBold.copyWith(
                          color: sBlack,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Devam etmek için bilgilerinizi girin",
                        style: sEncodeSansRegular.copyWith(
                          color: sBlack,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                const _Mail(),
                const SizedBox(height: 20),
                const _Password(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Zaten hesabınız var mı?",
                    style: sEncodeSansRegular.copyWith(
                        color: sBlack, fontSize: 16),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21),
                  child: TextButton(
                    onPressed: () => Navigator.pushNamed(context, "/loginView"),
                    child: Text(
                      "Giriş yapın",
                      style: sEncodeSansSemiBold.copyWith(
                          color: sPrimary, fontSize: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    "Hesap Oluştur düğmesine tıklayarak,Kullanım\nKoşullarını ve Gizlilik Politikasını kabul etmiş olursunuz.",
                    style: sEncodeSansRegular.copyWith(
                        color: sBlack, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: TextButton(
                    onPressed: () async {
                      if (formkey.currentState!.validate()) {
                        formkey.currentState!.save();
                        try {
                          var userResult =
                              await firebaseAuth.createUserWithEmailAndPassword(
                                  email: email, password: password);
                          formkey.currentState!.reset();
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("Kayıt yapıldı"),
                            ),
                          );
                          Navigator.pushReplacementNamed(context, "/loginView");
                        } catch (e) {
                          print(e.toString());
                        }
                      } else {}
                    },
                    child: Container(
                      width: 343,
                      height: 52,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(sBorderRadius),
                        color: sPrimary,
                      ),
                      child: Center(
                        child: Text(
                          "Hesap Oluştur",
                          style: sEncodeSansRegular.copyWith(
                            color: sWhite,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Password extends StatelessWidget {
  const _Password({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        height: 52,
        width: 343,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: sWhite,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "Bilgilerinizi doldurun";
            } else {}
          },
          onSaved: (value) {
            password = value!;
          },
          autofocus: false,
          style: const TextStyle(color: sBlack),
          obscureText: true,
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.lock_outline,
              color: sPrimary,
            ),
            border: OutlineInputBorder(gapPadding: 5),
            hintText: 'Şifre',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}

class _Mail extends StatelessWidget {
  const _Mail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: Container(
        height: 52,
        width: 343,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: sWhite,
          borderRadius: BorderRadius.circular(5),
        ),
        child: TextFormField(
          validator: (value) {
            if (value!.isEmpty) {
              return "Bilgilerinizi doldurun";
            } else {}
          },
          onSaved: (value) {
            email = value!;
          },
          autofocus: false,
          style: const TextStyle(color: sBlack),
          decoration: const InputDecoration(
            prefixIcon: Icon(
              Icons.mail_outline,
              color: sPrimary,
            ),
            border: OutlineInputBorder(gapPadding: 5),
            hintText: 'Email Adresi',
            hintStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
