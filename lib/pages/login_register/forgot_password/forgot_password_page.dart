import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

import '../login/login.dart';

class userForgotPassword extends StatefulWidget {
  const userForgotPassword({super.key});

  @override
  State<userForgotPassword> createState() => _userForgotPasswordState();
}

class _userForgotPasswordState extends State<userForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
    );
  }

  // top content
  Widget get buildTopContent => Container(
        width: double.infinity,
        height: 310,
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
                child: Image.asset("assets/images/clip-online-security.png"),
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
        height: 280,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // top
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: Text(
                "Kullanıcı Hesabınızın Şifresinimi Unuttunuz?",
                textAlign: TextAlign.center,
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
                "Lütfen Email Adresinizi Giriniz",
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

                  // login button content
                  _userresetpassBtnContent,
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
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          keyboardType: TextInputType.emailAddress,
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

  // user reset password mail button content
  Widget get _userresetpassBtnContent => GestureDetector(
        onTap: () {
          var alert = AlertDialog(
            content: Container(
                width: 200,
                height: 350,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CachedNetworkImage(
                      imageUrl:
                          "https://img.icons8.com/bubbles/200/000000/checkmark.png",
                      imageBuilder: (context, imageProvider) => Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        "Tebrikler!",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        "Kullanıcı Hesabınızın Kayıtlı Olduğu Email Adresinize Şifre Sıfırlama Bağlantısı Gönderildi",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => userLogin()),
                            (Route<dynamic> route) => false);
                      },
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.redAccent.withOpacity(0.9),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "Giriş Yap",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          );
          showDialog(context: context, builder: (BuildContext) => alert);
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
            "Devam Et",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      );
}
