import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todolist/pages/home/todoFavorityPg/todo_favority.dart';

class animationLoadingRoot extends StatefulWidget {
  const animationLoadingRoot({super.key});

  @override
  State<animationLoadingRoot> createState() => _animationLoadingRootState();
}

class _animationLoadingRootState extends State<animationLoadingRoot> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => saveMsg()),
          (Route<dynamic> route) => false);
    });
  }

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
            LoadingAnimationWidget.inkDrop(color: Colors.redAccent, size: 55),
            SizedBox(
              height: 15,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              padding: EdgeInsets.all(15),
              child: Text(
                "Çalışmanız Kaydediliyor...",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class saveMsg extends StatefulWidget {
  const saveMsg({super.key});

  @override
  State<saveMsg> createState() => _saveMsgState();
}

class _saveMsgState extends State<saveMsg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBodyMain,
    );
  }

  // build body main content
  Widget get _buildBodyMain => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // top content
            _buildTopContent,
            SizedBox(
              height: 10,
            ),
            // body content
            _buildBodyContent,
            SizedBox(
              height: 10,
            ),
            // footer content
            _budilFooterContent,
          ],
        ),
      );

  // top content
  Widget get _buildTopContent => Container(
        width: double.infinity,
        height: 250,
        child: Image.asset("assets/images/undraw_Confirmed_re_sef7.png"),
      );

  // body content
  Widget get _buildBodyContent => Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            child: Text(
              "To Do'nuz Başarıyla Kaydedildi!!",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(5),
            child: Text(
              "Tebrikler Todo İçeriğiniz Favoriler Sayfasına Kayıt Edilmiştir",
              textAlign: TextAlign.center,
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ],
      );

  // footer content
  Widget get _budilFooterContent => GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) => todoFavority(),
              ),
              (Route<dynamic> route) => false);
        },
        child: Container(
          width: double.infinity,
          height: 50,
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: 25, right: 25),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Text(
            "Favoriler Sayfasına Dön!",
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
        ),
      );
}
