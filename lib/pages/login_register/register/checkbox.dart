import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todolist/pages/user_agreement/user_agreement.dart';

class CheckboxFormField extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const CheckboxFormField({Key? key}) : super(key: key);
  @override
  _CheckboxFormFieldSt createState() => _CheckboxFormFieldSt();
}

class _CheckboxFormFieldSt extends State<CheckboxFormField> {
  bool checkboxValue = false;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return FormField(
      builder: (state) {
        return Column(
          children: <Widget>[
            Container(
              width: screenSize.width,
              child: Row(
                children: <Widget>[
                  Checkbox(
                      value: checkboxValue,
                      onChanged: (value) {
                        checkboxValue = value!;
                        state.didChange(value);
                      }),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => userAgreement(),
                          ),
                        );
                      },
                      child: Text(
                        "Kullanıcı Sözleşmesini Okudum Ve Kabul Ediyorum",
                        style: GoogleFonts.nunito(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Text(
              state.errorText ?? '',
              style: TextStyle(
                color: Theme.of(context).errorColor,
              ),
            ),
          ],
        );
      },
      validator: (value) {
        if (!checkboxValue) return 'Kullanıcı Sözleşmesini Onaylamanız Gerek!';
        return null;
      },
    );
  }
}
