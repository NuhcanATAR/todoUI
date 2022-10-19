import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todolist/pages/login_register/login/login.dart';
import 'package:todolist/pages/login_register/register/checkbox.dart';

void main() async {
  runApp(MaterialApp(
    home: userRegister(),
  ));
}

class userRegister extends StatefulWidget {
  const userRegister({super.key});

  @override
  State<userRegister> createState() => _userRegisterState();
}

class _userRegisterState extends State<userRegister> {
  final _formUserRegKey = GlobalKey<FormState>();

  TextEditingController userName = TextEditingController();
  TextEditingController userMail = TextEditingController();
  TextEditingController userPass = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.lightGreen;
    }

    bool checkboxValue = false;
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Form(
        key: _formUserRegKey,
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
        height: 220,
        color: Colors.redAccent.withOpacity(0.9),
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            Positioned(
              height: 180,
              top: 30,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                child: Image.asset("assets/images/clip-chatting.png"),
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
        height: 450,
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
                "Kullanıcı Hesabınızı Oluşturunuz",
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
                "Hesabınızı Oluşturun",
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
                  // user name ınput
                  _userNameInputContent,
                  SizedBox(height: 20),
                  // user email adress ınput
                  _userEmailInputContent,
                  // user password ınput
                  SizedBox(height: 20),
                  _userPasswordInputContent,
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: const CheckboxFormField(),
                        ),
                      ],
                    ),
                  ),
                  // login button content
                  _userRegisterBtnContent,
                  // forgot password content
                  _userForgotPassContent,
                ],
              ),
            ),
          ],
        ),
      );

  // user name ınput content
  Widget get _userNameInputContent => Container(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          controller: userName,
          validator: (valueUserName) {
            if (valueUserName == null || valueUserName.isEmpty) {
              return "Ad Soyad Alanı Zorunludur";
            } else if (valueUserName.length > 15) {
              return "Karakter Sayısı Aşıldı";
            } else {
              return null;
            }
          },
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
          ),
          decoration: InputDecoration(
            labelText: "Adınız Soyadınız",
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

  // user email ınput content
  Widget get _userEmailInputContent => Container(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          keyboardType: TextInputType.emailAddress,
          controller: userMail,
          validator: (valueUserMail) {
            if (valueUserMail == null || valueUserMail.isEmpty) {
              return "Email Adresi Zorunludur";
            } else {
              return null;
            }
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
          controller: userPass,
          validator: (valueUserPass) {
            if (valueUserPass == null || valueUserPass.isEmpty) {
              return "Şifre Alanı Zorunludur!";
            } else if (valueUserPass.length < 8) {
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

  // user register button content
  Widget get _userRegisterBtnContent => GestureDetector(
        onTap: () {
          if (_formUserRegKey.currentState!.validate()) {
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
                          "Kullanıcı Hesabınız Başarıyla Oluşturulmuştur Giriş Yap Sayfasından Hesabına Giriş Yapabilirsiniz.",
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
                                builder: (context) => userLogin(),
                              ),
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
            print("Tıklandı");
          }
        },
        child: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.9),
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Text(
            "Kayıt Ol",
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ),
      );

  // user login content
  Widget get _userForgotPassContent => Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              " Zaten bir hesabınız varmı?",
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
                    builder: (context) => userLogin(),
                  ),
                );
              },
              child: Text(
                "Giriş Yap",
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
