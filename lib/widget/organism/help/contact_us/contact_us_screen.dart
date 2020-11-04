import 'package:flutter/material.dart';
import 'package:meesho/export/atom_export.dart';
import 'package:meesho/util/colors.dart';


class Contact_US_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(20, 70, 20, 10),
            padding: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              color: whitecolor,
              border: Border.all(
                color: pink300
              ),
            ),
            child: H2text(
              text: 'Call us at 08062835641',
            )
          ),
          H2text(text: 'Call support timings are from 10am - 7pm',),

          H2text(text: 'Beware of fraudulent calls -Meesho will never call you asking for your bank/details or OTP',)

        ],
      ),
      
    );
  }
}