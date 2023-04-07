import 'package:flutter/material.dart';

import '../style/app_style.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sBackground,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 30),
                child: Row(
                  children: [
                    // Icon(Icons.arrow_back_rounded),
                    Text(
                      "Giriş Yap",
                      style: sEncodeSansSemiBold.copyWith(
                        color: sBlack,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hoşgeldiniz !",
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
                      "Lütfen bilgilerinizle giriş yapın",
                      style: sEncodeSansRegular.copyWith(
                        color: sBlack,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 100),
              const _Mail(),
              const SizedBox(height: 20),
              const _Password(),
              const SizedBox(height: 20),
              _ForgotPass(),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  "Henüz bir hesabınız yok mu?",
                  style: sEncodeSansRegular.copyWith(color: sBlack, fontSize: 16),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Burada bir hesap oluşturun",
                    style: sEncodeSansSemiBold.copyWith(
                        color: sPrimary, fontSize: 14),
                  ),
                ),
              ),
              const SizedBox(height: 50),
      
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Container(
                    width: 343,
                    height: 52,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(sBorderRadius),
                      color: sPrimary,
                    ),
                    child: Center(
                      child: Text(
                        "Giriş Yap",
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
    );
  }
}

class _ForgotPass extends StatelessWidget {
  const _ForgotPass({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: Text(
            "Şifremi Unuttum ?",
            style: sEncodeSansRegular.copyWith(color: sBlack, fontSize: 14),
            
          ),
        ),
      ],
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
        child:  TextFormField(
          autofocus: false,
          style: TextStyle(color: sBlack),
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
        child:  TextFormField(
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
