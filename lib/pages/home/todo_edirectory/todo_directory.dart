import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/pages/home/bottomMenu_routing_distribution/bottomMenu_routing_distribution.dart';
import 'package:url_launcher/url_launcher.dart';

class todo_directory extends StatefulWidget {
  const todo_directory({super.key});

  @override
  State<todo_directory> createState() => _todo_directoryState();
}

class _todo_directoryState extends State<todo_directory> {
  Future<void>? _launched;

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
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
        title: Text(
          "To Do E-rehber",
          style: GoogleFonts.rubik(
              textStyle: TextStyle(
            color: Colors.redAccent,
            fontSize: 15,
          )),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              // directory user create add button
              _buildCreateDirectoryUser,
              SizedBox(
                height: 15,
              ),
              // directory user list content
              _buildDirectoryUserList,
            ],
          ),
        ),
      ),
    );
  }

  // directory user create add button
  Widget get _buildCreateDirectoryUser => Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(15),
        alignment: Alignment.center,
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
              "Yeni Kişi Oluştur",
              style: GoogleFonts.rubik(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      );

  // directory user list content
  Widget get _buildDirectoryUserList => Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            margin: EdgeInsets.only(bottom: 20, left: 15, right: 15),
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: CachedNetworkImage(
                    errorWidget: (context, url, error) => Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(125),
                        ),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://img.icons8.com/color/48/000000/user-male-circle--v1.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    imageUrl:
                        "https://store.donanimhaber.com/2a/71/96/2a7196fa4e85b977760a7f33586ee603.jpg",
                    imageBuilder: (context, imageProvider) => Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(125),
                        ),
                        image: DecorationImage(
                          image: imageProvider,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Çağatay Ulusoy",
                              style: GoogleFonts.rubik(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
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
                          child: Text(
                            "Software Developer",
                            style: GoogleFonts.rubik(
                              textStyle: TextStyle(
                                color: Colors.black54,
                                fontSize: 12.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    String _phone = '05349851069';
                    setState(() {
                      _launched = _makePhoneCall('tel:$_phone');
                    });
                  },
                  icon: Icon(
                    Icons.call,
                    color: Colors.black54,
                    size: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      );
}
