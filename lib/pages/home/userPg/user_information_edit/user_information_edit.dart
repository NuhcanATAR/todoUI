import 'package:flutter/material.dart';

class userinformationEdit extends StatefulWidget {
  const userinformationEdit({super.key});

  @override
  State<userinformationEdit> createState() => _userinformationEditState();
}

class _userinformationEditState extends State<userinformationEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanıcı Bilgilerini Güncelle"),
      ),
    );
  }
}
