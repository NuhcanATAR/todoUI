import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todolist/pages/home/bottomMenu_routing_distribution/bottomMenu_routing_distribution.dart';
import 'package:todolist/pages/home/homePg/home.dart';
import 'package:todolist/pages/home/todoFavorityPg/tododCreate/todo_create.dart';

class todoFavority extends StatefulWidget {
  const todoFavority({super.key});

  @override
  State<todoFavority> createState() => _todoFavorityState();
}

class _todoFavorityState extends State<todoFavority> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => bottomMenu_routing_distribution(),
              ),
            );
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.redAccent,
            size: 20,
          ),
        ),
        elevation: 0,
        title: Text(
          "Favori To Do Listem",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: Colors.redAccent,
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // Favority To Do Create Button Content
              _buildFavorityToDoCreateBtn,
              // Favority To Do List Box Content
              _buildFavorityTodoList,
            ],
          ),
        ),
      ),
    );
  }

  // Favority To Do Create Button Content
  Widget get _buildFavorityToDoCreateBtn => GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => todoCreate(),
            ),
          );
        },
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15),
          alignment: Alignment.center,
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.redAccent,
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Favori To Do Olu??tur",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      );

  // Favority Todo List Content
  Widget get _buildFavorityTodoList => Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            margin: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            showBarModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                width: double.infinity,
                                height: 500,
                                color: Colors.white,
                                padding: EdgeInsets.all(20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      // Todo text title content
                                      Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(bottom: 6),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "D??nem Sonu S??nav?? Haz??rl??k",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),

                                      // Todo date time content
                                      Container(
                                        width: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(bottom: 6),
                                        child: Row(
                                          children: <Widget>[
                                            CachedNetworkImage(
                                              imageUrl:
                                                  "https://img.icons8.com/color/48/000000/calendar-13.png",
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
                                              "2.10.2022 - 6.10.2022",
                                              style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                color: Colors.lightBlue,
                                                fontSize: 13,
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // Todo status content
                                      Container(
                                        width: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(bottom: 6),
                                        child: Row(
                                          children: <Widget>[
                                            CachedNetworkImage(
                                              imageUrl:
                                                  "https://img.icons8.com/color/48/000000/checked--v1.png",
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
                                              "Tamaland??",
                                              style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 13,
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // todo check detail text content
                                      Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(bottom: 6),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Bu Hafta Cumartesi ??tibaren D??nem Sonu S??navlar??na ??al????ma ????in Haz??rl??k Yap??lmas?? Gerekiyor!",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // todo check deatil list content
                                      Column(
                                        children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(
                                              bottom: 10,
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/color/48/000000/checkmark--v1.png",
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Genel olarak G??zden Ge??irme ",
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/material-rounded/24/000000/menu-2.png",
                                                  imageBuilder: ((context,
                                                          imageProvider) =>
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image:
                                                                imageProvider,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/color/48/000000/delete-sign.png",
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    " Tarih ??al??????lacak",
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/material-rounded/24/000000/menu-2.png",
                                                  imageBuilder: ((context,
                                                          imageProvider) =>
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image:
                                                                imageProvider,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/color/48/000000/delete-sign.png",
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Ededebiyat Soru ????z??lecek",
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/material-rounded/24/000000/menu-2.png",
                                                  imageBuilder: ((context,
                                                          imageProvider) =>
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image:
                                                                imageProvider,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/color/48/000000/delete-sign.png",
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Matematik Konu Tekrar??",
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/material-rounded/24/000000/menu-2.png",
                                                  imageBuilder: ((context,
                                                          imageProvider) =>
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image:
                                                                imageProvider,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "D??nem Sonu S??nav?? Haz??rl??k",
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Cumartesi g??n??nden itibaren d??nem sonu s??navlar??na ??al????ma",
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              CachedNetworkImage(
                                imageUrl:
                                    "https://img.icons8.com/color/48/000000/calendar-13.png",
                                imageBuilder: (context, imageProvider) =>
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
                                "2.10.2022 - 6.10.2022",
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
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                                child: Text(
                                  "Acil",
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                                child: Text(
                                  "Ders ??al????ma",
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
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
                ),
                Container(
                  width: 20,
                  height: 95,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                        "To do ????esini Sil",
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
                                        "To do ????esini G??ncelle",
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
                                        "To do ????esini Yazd??r",
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
                      imageBuilder: (context, imageProvider) => Container(
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
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
            ),
            margin: EdgeInsets.all(15),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(8),
                    child: Column(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            showBarModalBottomSheet(
                              context: context,
                              builder: (context) => Container(
                                width: double.infinity,
                                height: 500,
                                color: Colors.white,
                                padding: EdgeInsets.all(20),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: <Widget>[
                                      // Todo text title content
                                      Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(bottom: 6),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "D??nem Sonu S??nav?? Haz??rl??k",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                              color: Colors.black54,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),

                                      // Todo date time content
                                      Container(
                                        width: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(bottom: 6),
                                        child: Row(
                                          children: <Widget>[
                                            CachedNetworkImage(
                                              imageUrl:
                                                  "https://img.icons8.com/color/48/000000/calendar-13.png",
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
                                              "2.10.2022 - 6.10.2022",
                                              style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                color: Colors.lightBlue,
                                                fontSize: 13,
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // Todo status content
                                      Container(
                                        width: double.infinity,
                                        alignment: Alignment.centerLeft,
                                        margin: EdgeInsets.only(bottom: 6),
                                        child: Row(
                                          children: <Widget>[
                                            CachedNetworkImage(
                                              imageUrl:
                                                  "https://img.icons8.com/color/48/000000/checked--v1.png",
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
                                              "Tamaland??",
                                              style: GoogleFonts.rubik(
                                                  textStyle: TextStyle(
                                                color: Colors.black54,
                                                fontSize: 13,
                                              )),
                                            ),
                                          ],
                                        ),
                                      ),

                                      // todo check detail text content
                                      Container(
                                        width: double.infinity,
                                        margin: EdgeInsets.only(bottom: 6),
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Bu Hafta Cumartesi ??tibaren D??nem Sonu S??navlar??na ??al????ma ????in Haz??rl??k Yap??lmas?? Gerekiyor!",
                                          style: GoogleFonts.nunito(
                                            textStyle: TextStyle(
                                              color: Colors.black,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                      // todo check deatil list content
                                      Column(
                                        children: <Widget>[
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(
                                              bottom: 10,
                                            ),
                                            child: Row(
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/color/48/000000/checkmark--v1.png",
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Genel olarak G??zden Ge??irme ",
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/material-rounded/24/000000/menu-2.png",
                                                  imageBuilder: ((context,
                                                          imageProvider) =>
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image:
                                                                imageProvider,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/color/48/000000/delete-sign.png",
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    " Tarih ??al??????lacak",
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/material-rounded/24/000000/menu-2.png",
                                                  imageBuilder: ((context,
                                                          imageProvider) =>
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image:
                                                                imageProvider,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/color/48/000000/delete-sign.png",
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Ededebiyat Soru ????z??lecek",
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/material-rounded/24/000000/menu-2.png",
                                                  imageBuilder: ((context,
                                                          imageProvider) =>
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image:
                                                                imageProvider,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: double.infinity,
                                            margin: EdgeInsets.only(bottom: 10),
                                            child: Row(
                                              children: <Widget>[
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/color/48/000000/delete-sign.png",
                                                  imageBuilder: (context,
                                                          imageProvider) =>
                                                      Container(
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
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    "Matematik Konu Tekrar??",
                                                    style: GoogleFonts.nunito(
                                                      textStyle: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                CachedNetworkImage(
                                                  imageUrl:
                                                      "https://img.icons8.com/material-rounded/24/000000/menu-2.png",
                                                  imageBuilder: ((context,
                                                          imageProvider) =>
                                                      Container(
                                                        width: 20,
                                                        height: 20,
                                                        decoration:
                                                            BoxDecoration(
                                                          image:
                                                              DecorationImage(
                                                            image:
                                                                imageProvider,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      )),
                                                )
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Bisiklet Turu i??in Bulu??ma",
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Hafta Sonu Bisiklet Turu Bulu??mas??",
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: <Widget>[
                              CachedNetworkImage(
                                imageUrl:
                                    "https://img.icons8.com/color/48/000000/calendar-13.png",
                                imageBuilder: (context, imageProvider) =>
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
                                "2.10.2022 - 6.10.2022",
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
                          height: 10,
                        ),
                        Container(
                          width: double.infinity,
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                                child: Text(
                                  "Acil De??il",
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    left: 10, right: 10, top: 5, bottom: 5),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.purpleAccent,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(4),
                                  ),
                                ),
                                child: Text(
                                  "Spor",
                                  style: GoogleFonts.rubik(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
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
                ),
                Container(
                  width: 20,
                  height: 95,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
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
                                        "To do ????esini Sil",
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
                                        "To do ????esini G??ncelle",
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
                                        "To do ????esini Yazd??r",
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
                      imageBuilder: (context, imageProvider) => Container(
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
      );
}
