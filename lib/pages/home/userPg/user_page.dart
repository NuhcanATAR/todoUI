import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/animation/slide_route.dart';
import 'package:todolist/pages/home/userPg/user_contact/user_contact.dart';
import 'package:todolist/pages/home/userPg/user_feedBack/user_feedBack.dart';
import 'package:todolist/pages/home/userPg/user_information_edit/user_information_edit.dart';
import 'package:todolist/pages/home/userPg/user_profileimg_upgrade/user_profileimg_upgrade.dart';

class userPg extends StatefulWidget {
  const userPg({super.key});

  @override
  State<userPg> createState() => _userPgState();
}

class _userPgState extends State<userPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // profile image content
              _userProfileimgContent,

              SizedBox(
                height: 15,
              ),
              // user name, user id content
              _userNameidContent,
              SizedBox(
                height: 25,
              ),
              // user name upgrade content
              _userProfileUpgradeContent,
              // user profile image upgrade content

              _userProfileimgUpgradeContent,
              // user feedback content

              _userFeedBackContent,
              // user contact content
              _userContactContent,
            ],
          ),
        ),
      ),
    );
  }

  // user profile img view content
  Widget get _userProfileimgContent => CachedNetworkImage(
        imageUrl: "https://avatars.githubusercontent.com/u/77950761?v=4",
        imageBuilder: (context, imageProvider) => Container(
          width: 105,
          height: 105,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(125)),
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
        ),
      );

  // user name, user id content
  Widget get _userNameidContent => Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "Nuhcan ATAR",
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
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
              "#NuhcanATAR32456",
              style: GoogleFonts.nunito(
                textStyle: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
        ],
      );

  // user profile edit content
  Widget get _userProfileUpgradeContent => Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 8),
        child: Row(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl:
                  "https://img.icons8.com/color/48/000000/user-male-circle--v1.png",
              imageBuilder: (context, imageProvider) => Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                "Profil Bilgilerini Güncelle",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  SlideLeftRoute(
                    page: userinformationEdit(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.redAccent,
                size: 22,
              ),
            ),
          ],
        ),
      );

  // user profile img upgrade content
  Widget get _userProfileimgUpgradeContent => Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 8),
        child: Row(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl:
                  "https://img.icons8.com/color/48/000000/google-images.png",
              imageBuilder: (context, imageProvider) => Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                "Profil Resmini Değiştir",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  SlideLeftRoute(
                    page: userProfileimg_upgrade(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.redAccent,
                size: 22,
              ),
            ),
          ],
        ),
      );

  // user feedback content
  Widget get _userFeedBackContent => Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 8),
        child: Row(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: "https://img.icons8.com/color/48/000000/feedback.png",
              imageBuilder: (context, imageProvider) => Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                "Geri Bildirimde Bulun",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  SlideLeftRoute(
                    page: user_feedBack(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.redAccent,
                size: 22,
              ),
            ),
          ],
        ),
      );

  // user contact content
  Widget get _userContactContent => Container(
        width: double.infinity,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 20, right: 20, bottom: 8),
        child: Row(
          children: <Widget>[
            CachedNetworkImage(
              imageUrl: "https://img.icons8.com/color/48/000000/satisfied.png",
              imageBuilder: (context, imageProvider) => Container(
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                "Bizle İletişime Geç",
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  SlideLeftRoute(
                    page: userContact(),
                  ),
                );
              },
              icon: Icon(
                Icons.arrow_forward_ios,
                color: Colors.redAccent,
                size: 22,
              ),
            ),
          ],
        ),
      );
}
