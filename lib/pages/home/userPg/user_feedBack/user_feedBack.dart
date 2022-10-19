import 'package:flutter/material.dart';

class user_feedBack extends StatefulWidget {
  const user_feedBack({super.key});

  @override
  State<user_feedBack> createState() => _user_feedBackState();
}

class _user_feedBackState extends State<user_feedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Geri Bildirimde Bulun"),
      ),
    );
  }
}
