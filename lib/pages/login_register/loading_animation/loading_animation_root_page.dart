import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:todolist/animation/size_route.dart';
import 'package:todolist/animation/slide_route.dart';
import 'package:todolist/pages/home/bottomMenu_routing_distribution/bottomMenu_routing_distribution.dart';
import 'package:todolist/pages/home/homePg/home.dart';

class loadingAnimationRoot extends StatefulWidget {
  const loadingAnimationRoot({super.key});

  @override
  State<loadingAnimationRoot> createState() => _loadingAnimationRootState();
}

class _loadingAnimationRootState extends State<loadingAnimationRoot> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
        context,
        SlideTopRoute(
          page: bottomMenu_routing_distribution(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBodyContent,
    );
  }

  // build body content
  Widget get _buildBodyContent => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // loading animation content
            _buildLoadingAnimation,
            // app title content
            _buildAppTitle,
            // loading text content
            _buildloadingText,
          ],
        ),
      );

  // loading animation content
  Widget get _buildLoadingAnimation => Container(
        width: 100,
        height: 100,
        alignment: Alignment.center,
        child: Stack(
          children: <Widget>[
            LoadingAnimationWidget.discreteCircle(
              color: Colors.redAccent,
              size: 80,
            ),
            Positioned(
              top: 20,
              left: 20,
              right: 20,
              bottom: 20,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/flame-549.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  // app title content
  Widget get _buildAppTitle => Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(15),
        child: Text(
          "TO DO LİST",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );

  // loading text content
  Widget get _buildloadingText => Container(
        alignment: Alignment.center,
        margin: EdgeInsets.all(5),
        child: Text(
          "Yönlendiriliyor...",
          style: GoogleFonts.rubik(
            textStyle: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),
          ),
        ),
      );
}
