import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:todolist/pages/home/todoFavorityPg/todo_favority.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => showExitPopup(context),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Merhaba!",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Text(
                          "👋",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Nuhcan ATAR",
                    style: GoogleFonts.rubik(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            CachedNetworkImage(
              imageUrl: "https://avatars.githubusercontent.com/u/77950761?v=4",
              imageBuilder: (context, imageProvider) => Container(
                width: 45,
                height: 50,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                // Anlık Tarih Bilgisi Başlığı
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl:
                            "https://img.icons8.com/color/48/000000/calendar--v1.png",
                        imageBuilder: (context, imageProvider) => Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        "${dateTime.day.toString()}.${dateTime.month.toString()}.${dateTime.year.toString()}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 5),
                      CachedNetworkImage(
                        imageUrl:
                            "https://img.icons8.com/color/48/000000/clock--v1.png",
                        imageBuilder: (context, imageProvider) => Container(
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 3),
                      Text(
                        "${dateTime.hour.toString()}:${dateTime.minute.toString()}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                // karşılama yazısı
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  margin:
                      EdgeInsets.only(left: 15, top: 10, right: 15, bottom: 5),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Tekrardan Hoşgeldin!",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Hadi Kaldığımız Yerden Başlayalım",
                          style: GoogleFonts.rubik(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // arama kutusu
                Container(
                  width: double.infinity,
                  height: 50,
                  margin: EdgeInsets.all(15),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: double.infinity,
                          height: 50,
                          padding: EdgeInsets.only(left: 10, right: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.all(
                              Radius.circular(4),
                            ),
                          ),
                          child: TextField(
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                color: Colors.grey,
                                size: 20,
                              ),
                              hintText: "Ne Aramıştınız?",
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        padding: EdgeInsets.all(13),
                        margin: EdgeInsets.only(left: 8),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        child:
                            Image.asset("assets/images/icons8-filter-50.png"),
                      ),
                    ],
                  ),
                ),
                // todo kategori bölümü
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "To Do Kategorileri",
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.redAccent,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 150,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          SizedBox(width: 15),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.deepOrangeAccent,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/shopping-basket.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Alışveriş Sepeti",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "25%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 85,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/studying.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Ders Çalışma",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "65%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 45,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/book-shelf.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Kitap Listesi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "50%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 50,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/place-marker--v1.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Gidilecek Yerler",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "80%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 30,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.purple,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/sports.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Spor Aktiviteleri",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "30%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 80,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/conference.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Toplantılar",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "50%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 50,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/garden.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Bahçe İşleri",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "60%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 60,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.deepPurple,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/kitchen-room.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Mutfak İşleri",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "30%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 80,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.lightGreen,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/cinema---v1.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Dizi & Film",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "100%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 1,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.lightBlue,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/cash-in-hand.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Bütçe Listesi",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "20%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 90,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 165,
                            height: 150,
                            margin: EdgeInsets.only(right: 8),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                // top
                                Container(
                                  width: 165,
                                  height: 55,
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        left: 10,
                                        top: 10,
                                        bottom: 0,
                                        child: Container(
                                          width: 45,
                                          height: 45,
                                          padding: EdgeInsets.all(5),
                                          decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.7),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(4),
                                            ),
                                          ),
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://img.icons8.com/color/48/000000/hospital-3.png",
                                            imageBuilder:
                                                (context, imageProvider) =>
                                                    Container(
                                              width: 25,
                                              height: 25,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // body
                                Container(
                                  width: 165,
                                  margin: EdgeInsets.all(8),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Hastane",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                // footer
                                Container(
                                  width: 165,
                                  height: 59,
                                  color: Colors.white,
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerRight,
                                        margin: EdgeInsets.only(
                                            left: 5, right: 5, top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Expanded(
                                              child: Text(
                                                "Oluşturulan",
                                                style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "10%",
                                              style: GoogleFonts.rubik(
                                                textStyle: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 14,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Container(
                                        width: 165,
                                        alignment: Alignment.centerLeft,
                                        child: LinearPercentIndicator(
                                          width: 165 - 100,
                                          animation: true,
                                          lineHeight: 10.0,
                                          animationDuration: 2000,
                                          percent: 0.9,
                                          linearStrokeCap:
                                              LinearStrokeCap.roundAll,
                                          progressColor: Colors.lightBlue,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            margin: EdgeInsets.only(left: 8, right: 5),
                            alignment: Alignment.center,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Devamı İçin Tıklayın",
                                style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                // Önemli Todo Listeleri
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Önemli To Do Listeniz",
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.redAccent,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 4,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(
                                Radius.circular(4),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              margin: EdgeInsets.all(10),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hastane Randevusu için Gidilecek",
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Önünmüzdeki Pazartesi Hastane Randevusu var!",
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://img.icons8.com/color/48/000000/clock--v1.png",
                                          imageBuilder:
                                              (context, imageProvider) =>
                                                  Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: imageProvider,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "9:00 - 10:15",
                                          style: GoogleFonts.rubik(
                                              textStyle: TextStyle(
                                            color: Colors.lightBlue,
                                            fontSize: 13,
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 20,
                            height: 50,
                            alignment: Alignment.topCenter,
                            child: GestureDetector(
                              onTap: () {
                                showMaterialModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    width: double.infinity,
                                    height: 200,
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(25),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.delete,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Sil",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.edit,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Güncelle",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.print,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Yazdır",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
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
                              },
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://img.icons8.com/color/48/000000/menu-2.png",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
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
                // Favori Todo kategori listesi
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 15, right: 15),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Favori To Do Listeleri",
                                style: GoogleFonts.ubuntu(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => todoFavority(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.redAccent,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Dönem Sonu Sınavı Hazırlık",
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Cumartesi gününden itibaren dönem sınavlarına çalışma",
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://img.icons8.com/color/48/000000/clock--v1.png",
                                          imageBuilder:
                                              (context, imageProvider) =>
                                                  Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: imageProvider,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "10:30 - 13:30",
                                          style: GoogleFonts.rubik(
                                              textStyle: TextStyle(
                                            color: Colors.lightBlue,
                                            fontSize: 13,
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 80,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Acil",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 110,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.purpleAccent,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Ders Çalışma",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 20,
                            height: 110,
                            alignment: Alignment.topCenter,
                            child: GestureDetector(
                              onTap: () {
                                showMaterialModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    width: double.infinity,
                                    height: 200,
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(25),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.delete,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Sil",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.edit,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Güncelle",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.print,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Yazdır",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
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
                              },
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://img.icons8.com/color/48/000000/menu-2.png",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(4),
                        ),
                      ),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Bisiklet Turu için Buluşma",
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Hafta Sonu Bisiklet Turu Buluşması",
                                      style: GoogleFonts.rubik(
                                        textStyle: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: <Widget>[
                                        CachedNetworkImage(
                                          imageUrl:
                                              "https://img.icons8.com/color/48/000000/clock--v1.png",
                                          imageBuilder:
                                              (context, imageProvider) =>
                                                  Container(
                                            width: 20,
                                            height: 20,
                                            decoration: BoxDecoration(
                                              image: DecorationImage(
                                                image: imageProvider,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          "13:30 - 17:30",
                                          style: GoogleFonts.rubik(
                                              textStyle: TextStyle(
                                            color: Colors.lightBlue,
                                            fontSize: 13,
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 80,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.redAccent,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Acil Değil",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Container(
                                          width: 110,
                                          height: 25,
                                          decoration: BoxDecoration(
                                            color: Colors.purpleAccent,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(4)),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "Spor",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 20,
                            height: 110,
                            alignment: Alignment.topCenter,
                            child: GestureDetector(
                              onTap: () {
                                showMaterialModalBottomSheet(
                                  context: context,
                                  builder: (context) => Container(
                                    width: double.infinity,
                                    height: 200,
                                    color: Colors.white,
                                    alignment: Alignment.center,
                                    padding: EdgeInsets.all(25),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.delete,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Sil",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.edit,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Güncelle",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: double.infinity,
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.print,
                                                color: Colors.black54,
                                                size: 23,
                                              ),
                                              SizedBox(
                                                width: 20,
                                              ),
                                              Expanded(
                                                child: Text(
                                                  "To do Öğesini Yazdır",
                                                  style: GoogleFonts.nunito(
                                                    textStyle: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 17,
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
                              },
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://img.icons8.com/color/48/000000/menu-2.png",
                                imageBuilder: (context, imageProvider) =>
                                    Container(
                                  width: 18,
                                  height: 18,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: imageProvider,
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> showExitPopup(context) async {
    return await showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Çıkmakmı İstiyorsun?"),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            print('yes selected');
                            exit(0);
                          },
                          child: Text("Yes"),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.redAccent),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                          child: ElevatedButton(
                        onPressed: () {
                          print('no selected');
                          Navigator.of(context).pop();
                        },
                        child:
                            Text("No", style: TextStyle(color: Colors.black)),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ))
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
