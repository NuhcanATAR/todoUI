import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/pages/login_register/login/login.dart';
import 'package:todolist/pages/login_register/register/register.dart';

class buildPromotionPg extends StatefulWidget {
  const buildPromotionPg({super.key});

  @override
  State<buildPromotionPg> createState() => _buildPromotionPgState();
}

class _buildPromotionPgState extends State<buildPromotionPg> {
  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CachedNetworkImage(
        imageUrl:
            "https://images.pexels.com/photos/7843990/pexels-photo-7843990.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
        imageBuilder: (context, imageProvider) => Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            color: Colors.black.withOpacity(0.3),
            child: Stack(
              children: <Widget>[
                buildAppLogoTextContent,
                buildUserLoginOptionsContent,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget get buildAppLogoTextContent => Positioned(
        top: 0,
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/flame-549.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  "TO DO LİST",
                  style: GoogleFonts.rubik(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget get buildUserLoginOptionsContent => Positioned(
        bottom: 20,
        left: 0,
        right: 0,
        child: Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => userLogin(),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 50,
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Giriş Yap",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  height: 50,
                  margin:
                      EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 0,
                        bottom: 0,
                        top: 0,
                        child: Container(
                          width: 50,
                          height: 50,
                          alignment: Alignment.center,
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://img.icons8.com/color/48/000000/google-logo.png",
                            imageBuilder: (context, imageProvider) => Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: imageProvider,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            "Google ile Giriş Yap",
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,
                margin:
                    EdgeInsets.only(left: 25, right: 40, top: 10, bottom: 10),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 2,
                      child: Text(
                        "Henüz Bir Hesabınız Yokmu?",
                        style: GoogleFonts.rubik(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => userRegister(),
                              ),
                            );
                          },
                          child: Text(
                            "Hesab Oluştur",
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                color: Colors.redAccent,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
