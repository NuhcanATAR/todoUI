import 'package:flutter/material.dart';

class userAgreement extends StatefulWidget {
  const userAgreement({super.key});

  @override
  State<userAgreement> createState() => _userAgreementState();
}

class _userAgreementState extends State<userAgreement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kullanıcı Sözleşmesi"),
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
