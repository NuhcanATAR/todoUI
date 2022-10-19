import 'package:cached_network_image/cached_network_image.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/pages/home/homePg/home.dart';
import 'package:todolist/pages/home/quit_select/quid_select.dart';
import 'package:todolist/pages/home/todoFavorityPg/todo_favority.dart';
import 'package:todolist/pages/home/todo_edirectory/todo_directory.dart';
import 'package:todolist/pages/home/userPg/user_page.dart';

class bottomMenu_routing_distribution extends StatefulWidget {
  const bottomMenu_routing_distribution({super.key});

  @override
  State<bottomMenu_routing_distribution> createState() =>
      _bottomMenu_routing_distributionState();
}

class _bottomMenu_routing_distributionState
    extends State<bottomMenu_routing_distribution> {
  int currentPage = 2;
  final List<Widget> _pages = [
    userPg(),
    todoFavority(),
    homePage(),
    todo_directory(),
    quitSelectPg(),
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final viewPadding = MediaQuery.of(context).viewPadding;
    double barHeight;
    double barHeightWithNotch = 67;
    double arcHeightWithNotch = 67;

    if (size.height > 700) {
      barHeight = 70;
    } else {
      barHeight = size.height * 0.1;
    }

    if (viewPadding.bottom > 0) {
      barHeightWithNotch = (size.height * 0.07) + viewPadding.bottom;
      arcHeightWithNotch = (size.height * 0.075) + viewPadding.bottom;
    }
    List<TabData> getTabsData() {
      return [
        TabData(
          icon: Icons.account_box,
          iconSize: 25.0,
          title: 'Sayfanız',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        TabData(
          icon: Icons.favorite,
          iconSize: 25,
          title: 'Favoriler',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        TabData(
          icon: Icons.home,
          iconSize: 25,
          title: 'Anasayfa',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        TabData(
          icon: Icons.call,
          iconSize: 25,
          title: 'e-rehber',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
        TabData(
          icon: Icons.exit_to_app,
          iconSize: 25,
          title: 'Çıkış',
          fontSize: 12,
          fontWeight: FontWeight.bold,
        ),
      ];
    }

    return Scaffold(
      body: _pages[currentPage],
      bottomNavigationBar: CircleBottomNavigationBar(
        initialSelection: currentPage,
        barHeight: viewPadding.bottom > 0 ? barHeightWithNotch : barHeight,
        arcHeight: viewPadding.bottom > 0 ? arcHeightWithNotch : barHeight,
        itemTextOff: viewPadding.bottom > 0 ? 0 : 1,
        itemTextOn: viewPadding.bottom > 0 ? 0 : 1,
        circleOutline: 15.0,
        shadowAllowance: 0.0,
        circleSize: 50.0,
        blurShadowRadius: 50.0,
        circleColor: Colors.redAccent,
        activeIconColor: Colors.white,
        inactiveIconColor: Colors.grey,
        tabs: getTabsData(),
        onTabChangedListener: (index) => setState(() => currentPage = index),
      ),
    );
  }
}
