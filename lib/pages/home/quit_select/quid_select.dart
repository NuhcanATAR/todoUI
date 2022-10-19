import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/pages/login_register/login/login.dart';

class quitSelectPg extends StatefulWidget {
  const quitSelectPg({super.key});

  @override
  State<quitSelectPg> createState() => _quitSelectPgState();
}

class _quitSelectPgState extends State<quitSelectPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _buildAccountAddRoute,
            SizedBox(
              height: 25,
            ),
            _buildAccountQuitContent,
          ],
        ),
      ),
    );
  }

  Widget get _buildAccountAddRoute => GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => userLogin()),
              (Route<dynamic> route) => false);
        },
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 40, right: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.account_circle,
                color: Colors.redAccent,
                size: 22,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Başka Hesaptan Giriş Yap",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  Widget get _buildAccountQuitContent => GestureDetector(
        onTap: () {
          exit(0);
        },
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 35, right: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.exit_to_app,
                color: Colors.redAccent,
                size: 22,
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "Uygulamadan Çıkış Yap",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
