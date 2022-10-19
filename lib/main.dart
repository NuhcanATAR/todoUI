import 'package:flutter/material.dart';
import 'package:todolist/pages/promotion/promotion_page.dart';
import 'package:todolist/routes/routes.dart';

void main() {
  runApp(
    buildMaterialMain(),
  );
}

class buildMaterialMain extends StatefulWidget {
  const buildMaterialMain({super.key});

  @override
  State<buildMaterialMain> createState() => _buildMaterialMainState();
}

class _buildMaterialMainState extends State<buildMaterialMain> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: routesList(),
      debugShowCheckedModeBanner: false,
    );
  }
}
