import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/animation/slide_route.dart';
import 'package:todolist/pages/home/homePg/home.dart';
import 'package:todolist/pages/login_register/forgot_password/forgot_password_page.dart';
import 'package:todolist/pages/login_register/loading_animation/loading_animation_root_page.dart';

class userLogin extends StatefulWidget {
  const userLogin({super.key});

  @override
  State<userLogin> createState() => _userLoginState();
}

class _userLoginState extends State<userLogin> {
  TextEditingController userMail = TextEditingController();
  TextEditingController userPassword = TextEditingController();

  final _formLoginKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formLoginKey,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // top content
                buildTopContent,
                // body content
                buildBodyContent,
              ],
            ),
          ),
        ),
      ),
    );
  }

  // top content
  Widget get buildTopContent => Container(
        width: double.infinity,
        height: 290,
        color: Colors.redAccent.withOpacity(0.9),
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Positioned(
              height: 210,
              top: 50,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                child: Image.asset(
                    "assets/images/clip-man-logging-into-his-account-on-phone-removebg-preview.png"),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 10,
              child: Container(
                width: 70,
                child: Image.asset("assets/images/macaroni-1263.png"),
              ),
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                width: 70,
                child: Image.asset("assets/images/macaroni-1263.png"),
              ),
            ),
          ],
        ),
      );

  // body content
  Widget get buildBodyContent => Container(
        width: double.infinity,
        height: 350,
        padding: EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // top
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Kullanıcı Hesabınıza Giriş Yapınız",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Hesabınıza Giriş Yapınız",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            // body
            SizedBox(
              height: 25,
            ),
            Container(
              width: double.infinity,
              child: Column(
                children: <Widget>[
                  // user email adress ınput
                  _userEmailInputContent,
                  // user password ınput
                  SizedBox(height: 20),
                  _userPasswordInputContent,
                  // login button content
                  _userLoginBtnContent,
                  // forgot password content
                  _userForgotPassContent,
                ],
              ),
            ),
          ],
        ),
      );

  // user email ınput content
  Widget get _userEmailInputContent => Container(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          controller: userMail,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "E-mail Adresi Zorunludur";
            }
            return null;
          },
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            labelText: "E-mail Adresiniz",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.redAccent,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 1.0,
              ),
            ),
            labelStyle: TextStyle(
              fontSize: 14,
              color: Colors.redAccent,
            ),
          ),
        ),
      );

  // user password ınput content
  Widget get _userPasswordInputContent => Container(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          controller: userPassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "Parola Alanı Zorunludur!";
            } else if (value.length < 8) {
              return "8 Karakter veya Üstü Olmalı Şifre";
            } else {
              return null;
            }
          },
          obscureText: true,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            labelText: "Şifreniz",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.redAccent,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide(
                color: Colors.redAccent,
                width: 1.0,
              ),
            ),
            labelStyle: TextStyle(
              fontSize: 14,
              color: Colors.redAccent,
            ),
          ),
        ),
      );

  // user login button content
  Widget get _userLoginBtnContent => GestureDetector(
        onTap: () {
          if (_formLoginKey.currentState!.validate()) {
            Navigator.pushAndRemoveUntil(
                context,
                SlideLeftRoute(page: loadingAnimationRoot()),
                (Route<dynamic> route) => false);
            print("Giriş Yapılıyor...");
          }
        },
        child: Container(
          width: double.infinity,
          height: 50,
          margin: EdgeInsets.only(top: 25),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.9),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Text(
            "Giriş Yap",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      );
  // user forgot password content
  Widget get _userForgotPassContent => Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              " HesabınızınŞifrenizimi Unuttunuz?",
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
              ),
            ),
            SizedBox(width: 5),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => userForgotPassword(),
                  ),
                );
              },
              child: Text(
                "Şifre Unuttum",
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.redAccent.withOpacity(0.9),
                ),
              ),
            ),
          ],
        ),
      );
}
