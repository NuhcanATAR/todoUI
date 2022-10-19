import 'package:flutter/material.dart';

class userContact extends StatefulWidget {
  const userContact({super.key});

  @override
  State<userContact> createState() => _userContactState();
}

class _userContactState extends State<userContact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bizle İletişime Geç"),
      ),
    );
  }
}
