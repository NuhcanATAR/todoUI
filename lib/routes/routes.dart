import 'package:flutter/material.dart';
import 'package:todolist/pages/promotion/promotion_page.dart';

class routesList extends StatelessWidget {
  const routesList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: buildPromotionPg(),
    );
  }
}
