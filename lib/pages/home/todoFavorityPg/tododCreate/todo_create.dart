import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/pages/home/todoFavorityPg/todoSaveMsg/savemsg.dart';
import 'package:todolist/pages/login_register/loading_animation/loading_animation_root_page.dart';

class todoCreate extends StatefulWidget {
  const todoCreate({super.key});

  @override
  State<todoCreate> createState() => _todoCreateState();
}

class _todoCreateState extends State<todoCreate> {
  DateTime StartdateTime = DateTime(2022, 10, 18);
  DateTime EndDateTime = DateTime(2022, 10, 18);

  List<String> statusCheckList = [
    "Acil",
    "Acil Değil",
  ];

  List<String> todoCategoryList = [
    "Alışveriş Listesi",
    "Ders Çalışma",
    "Kitap Listesi",
    "Gidilecek Yerler",
    "Spor Aktiviteleri",
    "Toplantılar",
    "Bahçe İşleri",
    "Mutfak işleri",
    "Dizi & Film",
    "Bütçe Listesi",
    "Hastane",
  ];

  late String DropDownStatusValue = statusCheckList.first;
  late String DropDownCategoryValue = todoCategoryList.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.redAccent,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Favori To Do Oluşturma",
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.redAccent,
              fontSize: 15,
            ),
          ),
        ),
      ),
      body: _buildBodyMain,
    );
  }

  Widget get _buildBodyMain => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        margin: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // todo title ınput content
              _buildTodoTitleContent,
              // todo detailt text ınput content
              _buidlTodoDetailTextContent,
              // todo start time content
              _buildStartTimeContent,
              // todo end time content
              _buildEndTimeContent,
              // todo status content
              _buildStatusControl,
              // todo category content
              _buildTodoCategoryContent,
              // todo checklist content
              Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(4),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: 120,
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.add,
                                  color: Colors.redAccent,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Liste Ekle",
                                  style: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                      color: Colors.redAccent,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              height: 50,
                              child: TextFormField(
                                style: GoogleFonts.nunito(
                                  textStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                  ),
                                ),
                                decoration: InputDecoration(
                                  hintText: "Yapıcağınız İşi Ekleyin",
                                  hintStyle: GoogleFonts.nunito(
                                    textStyle: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              // todo save button
              _buildSaveButton,
            ],
          ),
        ),
      );

  // todo title ınput content
  Widget get _buildTodoTitleContent => Container(
        width: double.infinity,
        height: 50,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: TextFormField(
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          decoration: InputDecoration(
            hintText: "To Do Başlık Oluşturunuz *",
            hintStyle: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
        ),
      );

  // todo deatil ınput content
  Widget get _buidlTodoDetailTextContent => Container(
        width: double.infinity,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: TextFormField(
          style: GoogleFonts.nunito(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
          decoration: InputDecoration(
            hintText: "Yapıcağınız İş Hakkında Detaylı Bilgi Giriniz *",
            hintStyle: GoogleFonts.nunito(
              textStyle: TextStyle(
                color: Colors.black,
                fontSize: 14,
              ),
            ),
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
          ),
          keyboardType: TextInputType.multiline,
          maxLines: 5,
          maxLength: 1000,
        ),
      );

  // todo start date time content
  Widget get _buildStartTimeContent => Container(
        width: double.infinity,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "Başlangıç Tarihini Belirleyiniz *",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
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
                  SizedBox(
                    width: 5,
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        "https://img.icons8.com/external-icongeek26-linear-colour-icongeek26/64/000000/external-date-camping-icongeek26-linear-colour-icongeek26.png",
                    imageBuilder: ((context, imageProvider) => Container(
                          width: 23,
                          height: 23,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final startdate = await pickstartDate();
                        if (startdate == null) return; // pressed cancel

                        setState(() => StartdateTime = startdate);
                      },
                      child: Text(
                        "${StartdateTime.day}.${StartdateTime.month}.${StartdateTime.year}",
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );

  // todo end date time content
  Widget get _buildEndTimeContent => Container(
        width: double.infinity,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "Bitiş Tarihini Belirleyiniz *",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
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
                  SizedBox(
                    width: 5,
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        "https://img.icons8.com/external-icongeek26-linear-colour-icongeek26/64/000000/external-date-camping-icongeek26-linear-colour-icongeek26.png",
                    imageBuilder: ((context, imageProvider) => Container(
                          width: 23,
                          height: 23,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: imageProvider,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        final enddate = await pickDate();
                        if (enddate == null) return; // pressed cancel

                        setState(() => EndDateTime = enddate);
                      },
                      child: Text(
                        "${EndDateTime.day}.${EndDateTime.month}.${EndDateTime.year}",
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      );

  // todo status control content
  Widget get _buildStatusControl => Container(
        width: double.infinity,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "Aciliyet Durumunu Belirtin *",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
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
              margin: EdgeInsets.only(left: 5),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: DropDownStatusValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(color: Colors.black54),
                  ),
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (String? Statusvalue) {
                    // This is called when the user selects an item.
                    setState(() {
                      DropDownStatusValue = Statusvalue!;
                    });
                  },
                  items: statusCheckList
                      .map<DropdownMenuItem<String>>((String CheckStatusvalue) {
                    return DropdownMenuItem<String>(
                      value: CheckStatusvalue,
                      child: Text(CheckStatusvalue),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      );

  // todo category content
  Widget get _buildTodoCategoryContent => Container(
        width: double.infinity,
        padding: EdgeInsets.all(5),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "To Do Kategorisi Belirtin *",
                style: GoogleFonts.nunito(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
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
              margin: EdgeInsets.only(left: 5),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  isExpanded: true,
                  value: DropDownCategoryValue,
                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  style: GoogleFonts.nunito(
                    textStyle: TextStyle(color: Colors.black54),
                  ),
                  underline: Container(
                    height: 2,
                  ),
                  onChanged: (String? Categoryvalue) {
                    // This is called when the user selects an item.
                    setState(() {
                      DropDownCategoryValue = Categoryvalue!;
                    });
                  },
                  items: todoCategoryList.map<DropdownMenuItem<String>>(
                      (String CheckCategoryvalue) {
                    return DropdownMenuItem<String>(
                      value: CheckCategoryvalue,
                      child: Text(CheckCategoryvalue),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      );

  // todo content is save is button
  Widget get _buildSaveButton => GestureDetector(
        onTap: () {
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => animationLoadingRoot()),
              (Route<dynamic> route) => false);
        },
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 20, bottom: 25),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(4),
            ),
            color: Colors.redAccent,
          ),
          alignment: Alignment.center,
          child: Text(
            "Todoyu Oluştur",
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ),
      );

  Future<DateTime?> pickstartDate() => showDatePicker(
        context: context,
        initialDate: StartdateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );

  Future<DateTime?> pickDate() => showDatePicker(
        context: context,
        initialDate: EndDateTime,
        firstDate: DateTime(1900),
        lastDate: DateTime(2100),
      );
}
